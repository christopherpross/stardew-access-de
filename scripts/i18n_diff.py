#!/usr/bin/env python
import argparse
import json
import sys
from pathlib import Path

try:
    from fluent.syntax import FluentParser
    from fluent.syntax import ast as fast
except ImportError as exc:
    raise SystemExit(
        "Missing dependency: fluent.syntax. "
        "Install it via your pyproject (see pyproject.toml)."
    ) from exc


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        return path.read_text(encoding="utf-8-sig")


def _ensure_entry(entries, msg_id):
    if msg_id not in entries:
        entries[msg_id] = {"attrs": set(), "variants": {None: set()}}
    return entries[msg_id]


def _variant_key_to_str(key):
    if isinstance(key, fast.Identifier):
        return key.name
    if isinstance(key, fast.NumberLiteral):
        return key.value
    return str(key)


def _walk_ast(node, on_select):
    if node is None:
        return
    if isinstance(node, fast.SelectExpression):
        on_select(node)
    if isinstance(node, (str, int, float, bool)):
        return
    if isinstance(node, (list, tuple)):
        for child in node:
            _walk_ast(child, on_select)
        return
    if isinstance(node, dict):
        for child in node.values():
            _walk_ast(child, on_select)
        return
    if hasattr(node, "__dict__"):
        for child in vars(node).values():
            _walk_ast(child, on_select)


def _collect_variants(node):
    keys = set()

    def on_select(select_expr):
        for variant in select_expr.variants:
            keys.add(_variant_key_to_str(variant.key))

    _walk_ast(node, on_select)
    return keys


def parse_ftl(path: Path):
    entries = {}
    parser = FluentParser()
    resource = parser.parse(read_text(path))

    for item in resource.body:
        if isinstance(item, (fast.Message, fast.Term)):
            msg_id = item.id.name
            entry = _ensure_entry(entries, msg_id)

            if item.value is not None:
                entry["variants"][None].update(_collect_variants(item.value))

            for attr in item.attributes:
                attr_name = attr.id.name
                entry["attrs"].add(attr_name)
                entry["variants"].setdefault(attr_name, set()).update(
                    _collect_variants(attr.value)
                )

    return entries


def _flatten_variants(entries):
    out = {}
    for msg_id, data in entries.items():
        for attr, keys in data["variants"].items():
            if not keys:
                continue
            key = msg_id if attr is None else f"{msg_id}.{attr}"
            out[key] = sorted(keys)
    return out


def map_de_file(en_path: Path, de_dir: Path) -> Path:
    name = en_path.name
    if name == "en.ftl":
        return de_dir / "de.ftl"
    if name.endswith(".en.ftl"):
        return de_dir / name.replace(".en.ftl", ".de.ftl")
    return None


def diff_files(en_path: Path, de_path: Path | None):
    en_entries = parse_ftl(en_path)
    if de_path is None or not de_path.exists():
        return {
            "en_file": en_path.name,
            "de_file": None,
            "missing_messages": sorted(en_entries.keys()),
            "missing_attributes": {
                k: sorted(v["attrs"]) for k, v in en_entries.items() if v["attrs"]
            },
            "missing_variants": _flatten_variants(en_entries),
            "deprecated_messages": [],
            "deprecated_attributes": {},
            "deprecated_variants": {},
            "stats": {
                "missing_messages": len(en_entries),
                "missing_attributes": sum(len(v["attrs"]) for v in en_entries.values()),
                "missing_variants": sum(
                    len(v) for v in _flatten_variants(en_entries).values()
                ),
                "deprecated_messages": 0,
                "deprecated_attributes": 0,
                "deprecated_variants": 0,
            },
        }

    de_entries = parse_ftl(de_path)

    en_ids = set(en_entries.keys())
    de_ids = set(de_entries.keys())

    missing_messages = sorted(en_ids - de_ids)
    deprecated_messages = sorted(de_ids - en_ids)

    missing_attributes = {}
    deprecated_attributes = {}
    missing_variants = {}
    deprecated_variants = {}

    for msg_id in sorted(en_ids & de_ids):
        en_attrs = en_entries.get(msg_id, {"attrs": set()})["attrs"]
        de_attrs = de_entries.get(msg_id, {"attrs": set()})["attrs"]
        miss = sorted(en_attrs - de_attrs)
        dep = sorted(de_attrs - en_attrs)
        if miss:
            missing_attributes[msg_id] = miss
        if dep:
            deprecated_attributes[msg_id] = dep

        en_msg_vars = en_entries[msg_id]["variants"].get(None, set())
        de_msg_vars = de_entries[msg_id]["variants"].get(None, set())
        msg_miss = sorted(en_msg_vars - de_msg_vars)
        msg_dep = sorted(de_msg_vars - en_msg_vars)
        if msg_miss:
            missing_variants[msg_id] = msg_miss
        if msg_dep:
            deprecated_variants[msg_id] = msg_dep

        for attr in sorted(en_attrs & de_attrs):
            en_attr_vars = en_entries[msg_id]["variants"].get(attr, set())
            de_attr_vars = de_entries[msg_id]["variants"].get(attr, set())
            attr_miss = sorted(en_attr_vars - de_attr_vars)
            attr_dep = sorted(de_attr_vars - en_attr_vars)
            if attr_miss:
                missing_variants[f"{msg_id}.{attr}"] = attr_miss
            if attr_dep:
                deprecated_variants[f"{msg_id}.{attr}"] = attr_dep

    return {
        "en_file": en_path.name,
        "de_file": de_path.name,
        "missing_messages": missing_messages,
        "missing_attributes": missing_attributes,
        "missing_variants": missing_variants,
        "deprecated_messages": deprecated_messages,
        "deprecated_attributes": deprecated_attributes,
        "deprecated_variants": deprecated_variants,
        "stats": {
            "missing_messages": len(missing_messages),
            "missing_attributes": sum(len(v) for v in missing_attributes.values()),
            "missing_variants": sum(len(v) for v in missing_variants.values()),
            "deprecated_messages": len(deprecated_messages),
            "deprecated_attributes": sum(len(v) for v in deprecated_attributes.values()),
            "deprecated_variants": sum(len(v) for v in deprecated_variants.values()),
        },
    }


def collect_report(en_dir: Path, de_dir: Path):
    file_reports = []
    for en_path in sorted(en_dir.glob("*.ftl")):
        de_path = map_de_file(en_path, de_dir)
        file_reports.append(diff_files(en_path, de_path))
    return file_reports


def compute_totals(report):
    total = {
        "missing_messages": 0,
        "missing_attributes": 0,
        "missing_variants": 0,
        "deprecated_messages": 0,
        "deprecated_attributes": 0,
        "deprecated_variants": 0,
        "missing_files": 0,
    }

    lines = []

    for entry in report:
        stats = entry["stats"]
        missing_file = entry["de_file"] is None
        if missing_file:
            total["missing_files"] += 1

        total["missing_messages"] += stats["missing_messages"]
        total["missing_attributes"] += stats["missing_attributes"]
        total["missing_variants"] += stats["missing_variants"]
        total["deprecated_messages"] += stats["deprecated_messages"]
        total["deprecated_attributes"] += stats["deprecated_attributes"]
        total["deprecated_variants"] += stats["deprecated_variants"]

    return total


def render_text(report, total):
    lines = []
    lines.append("FTL diff report")
    lines.append("================")

    for entry in report:
        stats = entry["stats"]
        de_name = entry["de_file"] or "<missing>"
        lines.append(
            f"- {entry['en_file']} vs {de_name}: "
            f"missing_messages {stats['missing_messages']}, "
            f"missing_attributes {stats['missing_attributes']}, "
            f"missing_variants {stats['missing_variants']}, "
            f"deprecated_messages {stats['deprecated_messages']}, "
            f"deprecated_attributes {stats['deprecated_attributes']}, "
            f"deprecated_variants {stats['deprecated_variants']}"
        )

    lines.append("----------------")
    lines.append(
        "Totals: "
        f"missing_messages {total['missing_messages']}, "
        f"missing_attributes {total['missing_attributes']}, "
        f"missing_variants {total['missing_variants']}, "
        f"deprecated_messages {total['deprecated_messages']}, "
        f"deprecated_attributes {total['deprecated_attributes']}, "
        f"deprecated_variants {total['deprecated_variants']}, "
        f"missing_files {total['missing_files']}"
    )

    lines.append("")
    lines.append("DETAILS")
    lines.append("=======")

    for entry in report:
        de_name = entry["de_file"] or "<missing>"
        if (
            not entry["missing_messages"]
            and not entry["missing_attributes"]
            and not entry["missing_variants"]
            and not entry["deprecated_messages"]
            and not entry["deprecated_attributes"]
            and not entry["deprecated_variants"]
        ):
            continue

        lines.append("")
        lines.append(f"{entry['en_file']} vs {de_name}")

        if entry["missing_messages"]:
            lines.append("  Missing messages:")
            for msg in entry["missing_messages"]:
                lines.append(f"    - {msg}")

        if entry["missing_attributes"]:
            lines.append("  Missing attributes:")
            for msg_id in sorted(entry["missing_attributes"].keys()):
                for attr in entry["missing_attributes"][msg_id]:
                    lines.append(f"    - {msg_id}.{attr}")

        if entry["missing_variants"]:
            lines.append("  Missing variants:")
            for msg_id in sorted(entry["missing_variants"].keys()):
                for key in entry["missing_variants"][msg_id]:
                    lines.append(f"    - {msg_id}[{key}]")

        if entry["deprecated_messages"]:
            lines.append("  Deprecated messages (only in DE):")
            for msg in entry["deprecated_messages"]:
                lines.append(f"    - {msg}")

        if entry["deprecated_attributes"]:
            lines.append("  Deprecated attributes (only in DE):")
            for msg_id in sorted(entry["deprecated_attributes"].keys()):
                for attr in entry["deprecated_attributes"][msg_id]:
                    lines.append(f"    - {msg_id}.{attr}")

        if entry["deprecated_variants"]:
            lines.append("  Deprecated variants (only in DE):")
            for msg_id in sorted(entry["deprecated_variants"].keys()):
                for key in entry["deprecated_variants"][msg_id]:
                    lines.append(f"    - {msg_id}[{key}]")

    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser(
        description="Compare EN/DE Fluent files and report missing/deprecated messages and attributes."
    )
    parser.add_argument(
        "--en-dir",
        default="i18n",
        help="Directory containing English FTL files (default: i18n).",
    )
    parser.add_argument(
        "--de-dir",
        default="[Fluent][DE] Stardew Access/i18n",
        help="Directory containing German FTL files.",
    )
    parser.add_argument(
        "--format",
        choices=["text", "json"],
        default="text",
        help="Output format.",
    )
    parser.add_argument(
        "--out",
        help="Write report to a file (e.g. reports/i18n-diff.txt).",
    )
    parser.add_argument(
        "--json-out",
        help="Write JSON report to a file (e.g. reports/i18n-diff.json).",
    )
    parser.add_argument(
        "--ci",
        action="store_true",
        help="Exit with code 1 if any missing/deprecated messages, attributes, variants, or files are found.",
    )
    args = parser.parse_args()

    en_dir = Path(args.en_dir)
    de_dir = Path(args.de_dir)

    report = collect_report(en_dir, de_dir)

    totals = compute_totals(report)
    json_output = json.dumps({"files": report, "totals": totals}, indent=2, ensure_ascii=True)

    if args.format == "json":
        output = json_output
    else:
        output = render_text(report, totals)

    if args.out:
        out_path = Path(args.out)
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(output, encoding="utf-8")

    if args.json_out:
        json_path = Path(args.json_out)
        json_path.parent.mkdir(parents=True, exist_ok=True)
        json_path.write_text(json_output, encoding="utf-8")

    print(output)

    if args.ci and any(totals.values()):
        sys.exit(1)


if __name__ == "__main__":
    main()
