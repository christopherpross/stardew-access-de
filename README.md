# Stardew Access I18N Template

This is a template for the translation mods for the [Stardew Access](https://www.nexusmods.com/stardewvalley/mods/16205) mod.
The mod depends on [Project Fluent](https://www.nexusmods.com/stardewvalley/mods/12638) for the translations and as such, you will need to install that too alongside Stardew Access.

The translation mod has two parts, the first one is the fluent content pack which contains all the translations for the mod so this is the most important part.
The second optional part is a C# mod that is supposed to contain the logic for advanced pluralization of item names for your language.
You can have basic pluralization setup with just fluent but that gets complicated for certain languages in which pluralization depends on certain conditions like the type of object (plural of `wood` is `pieces of wood` while plural of `pen` is `pens`).

*Note that currently the C# part of the mod has not yet been included in this template repository.*

## Why Project Fluent?

1. Allowed splitting of translation file into multiple sub-translation files (stardew access has a total of 6 translation files).
2. Support for locale variants (differentiating between en-US and en-GB, but also providing a default en variant).
3. Ability to use conditions in a translation entry allowing merging of multiple entries into one.
4. Custom functions inside translation entries that extend functionality.

## Fluent Content Pack Setup

1. Rename the folder `[Fluent][EN] Stardew Access` and replace `EN` with the appropriate language code.
2. Change the `Name`, `Author`, `Description`, and `UniqueID` values to describe your mod. (Don’t change the `UniqueID` under `ContentPackFor` and `Dependencies`!)
   - The `Name` field's value should ideally be the same as the folder's name you just changed to and as such, you'll only need to replace `EN` with your language code.
   - Follow this format for the UniqueID: `<YourName>.
   Fluent.StardewAccess.<language-code>`
     - An example of a United States English translation mod would be `Shoaib.Fluent.StardewAccess.en-us`
3. Create a folder named `i18n` inside this folder. This will contain all the translation `.ftl` files.
4. Now copy the `.ftl` files from the `i18n` folder of the mod's beta or release version of the mod and rename them with your language code.
5. That's it! Now you can translate these files.

You can find syntax guide for fluent [here](https://projectfluent.org/fluent/guide/).
There's also a [playground](https://projectfluent.org/play/) where you can test things if you want to.
You might also need to look into the custom functions added by [Project Fluent mod](https://hackmd.io/@Shockah/H1q8H-mcc/https%3A%2F%2Fhackmd.io%2F%40Shockah%2FHy8nTM7c5) and [Stardew Access](https://github.com/stardew-access/stardew-access/blob/c966d188ea506a70782edb5177ef6e87c685f890/stardew-access/Translation/CustomFluentFunctions.cs#L29-L91)

<TODO Add the doc link for custom functions in stardew access.>

Because this is a content pack, it loads just like any other mod. So once you're done translating or want to test your translations, copy or move the `[Fluent][EN] Stardew Access` over to the `Mods` folder.
It is recommended that you also host this content pack on Nexus (if possible otherwise github or some other platform is fine) so that we can mention your translation mod on Stardew Access' mod pages.