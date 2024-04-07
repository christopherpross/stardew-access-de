# Features

## Object Tracker

feature-object_tracker-sort_by_proximity = Nach Entfernung sortieren: {$is_enabled ->
    [0] Deaktiviert
    *[1] Aktiviert
  }
feature-object_tracker-read_selected_object = {$object_name} {$only_tile ->
    [0] ist {$direction} {$distance}
    *[1] {EMPTYSTRING()}
  } auf {$object_x}-{$object_y}, Spieler auf {$player_x}-{$player_y}
feature-object_tracker-read_selected_coordinates = Koordinaten: {$coordinates} {$only_tile ->
    [0] ist {$direction} {$distance}
    *[1] {EMPTYSTRING()}
  } Spieler auf {$player_x}-{$player_y}

feature-object_tracker-moving_to = Bewege nach {$object_x}-{$object_y}.
feature-object_tracker-could_not_find_path = Der Pfad zum Objekt konnte nicht gefunden werden.
feature-object_tracker-no_objects_found = Keine Objekte gefunden.
feature-object_tracker-no_categories_found = Keine Kategorien gefunden.
feature-object_tracker-end_of_list = Ende der Liste.
feature-object_tracker-start_of_list = Anfang der Liste.
feature-object_tracker-no_object = Kein Objekt
feature-object_tracker-no_category = Keine Kategorie
feature-object_tracker-no_selected_object = Kein ausgewähltes Objekt
feature-object_tracker-read_favorite = Favorit {$favorite_number} ist {$target_object} ({$target_category})
feature-object_tracker-read_favorite_stack  = Favoriten-Stapel {$stack_number}
feature-object_tracker-save_coordinates_toggle = Koordinaten speichern: {$is_enabled ->
    [0] Deaktiviert
    *[1] Aktiviert
  }
feature-object_tracker-favorite_unset = Favorit {$favorite_number} ist nicht gesetzt
feature-object_tracker-favorite_save = Speichere {$selected_object} ({$selected_category}) als Favorit {$favorite_number} in {$location_name}
feature-object_tracker-favorite_save_coordinates = Speichere Koordinaten {$coordinates} als Favorit {$favorite_number} in {$location_name}
feature-object_tracker-favorite_cleared = Favorit {$favorite_number} in {$location_name} gelöscht
feature-object_tracker-favorite_set_as_default = Aktuelle Favoriten als Voreinstellung speichern
feature-object_tracker-favorite_default_cleared = Voreingestellte Favoriten gelöscht
feature-object_tracker-no_destination_selected = Kein Ziel ausgewählt

## Tile Viewer

feature-tile_viewer-relative_cursor_lock_info = Relative Cursor-Sperre: {$is_enabled ->
    [0] Deaktiviert
    *[1] Aktiviert
  }
feature-tile_viewer-moving_to = Bewege zu {$tile_x}-{$tile_y}.
feature-tile_viewer-cannot_move_to = Kann nicht zu {$tile_x}-{$tile_y} bewegen.
feature-tile_viewer-stopped_moving = Bewegung gestoppt
feature-tile_viewer-reached = Ziel erreicht
feature-tile_viewer-blocked_tile_name = Blockiert
feature-tile_viewer-empty_tile_name = Leer

## Read Tile

feature-read_tile-manually_triggered_info = {$tile_name}, Kategorie: {$tile_category}
feature-read_tile-no_tile_found = Keine Spielsteine an den angegebenen Koordinaten gefunden.
feature-read_tile-tile_indexes = Spielsteinindizes:

## Other

feature-speak_selected_slot_item_name = {$slot_item_name} ausgewählt
feature-speak_location_name = {$location_name} betreten
feature-speak_health_n_stamina-in_percentage_format = Gesundheit ist {$health} % und Energie ist {$stamina} %
feature-speak_health_n_stamina-in_normal_format = Gesundheit ist {$health} und Energie ist {$stamina}
feature-speak_money = Du hast {$money}g
feature-speak_time_and_season = Es ist {$time_of_day} Uhr, und wir haben den {$day}. {$date} im {$season}
feature-speak_position = {$verbose_coordinates ->
    [0] {$x_pos}, {$y_pos}
    *[1] X: {$x_pos}, Y: {$y_pos}
  }
feature-warnings-health = Achtung! Gesundheit ist bei {$value} Prozent!
feature-warnings-stamina = Achtung! Energie ist bei {$value} percent!
feature-warnings-time = Achtung! es ist {$value} Uhr!
feature-grid_movement_status = Bewegung im Raster: {$is_active ->
    [0] Inaktiv
    *[1] Aktiv
  }


# Building operations

building_operations-move_building-under_construction = Verschiebung des Gebäudes nicht möglich! Befindet sich im Aufbau.
building_operations-move_building-no_permission = Du hast keine Berechtigung, dieses Gebäude zu verschieben!
building_operations-move_building-cannot_move = Gebäudeverschiebung zu {$x_position}x {$y_position}y nicht möglich!
building_operations-move_building-building_moved = {$building_name} nach {$x_position}x {$y_position}y verschoben.
building_operations-no_building_to_demolish = Kein Gebäude zum Abreißen vorhanden.
building_operations-building_failed = Bau fehlgeschlagen!


# FIXME update naming convention
prefix-repair = {$content} reparieren

suffix-building_door = {$content} Tür
suffix-map_entrance = {$content} Eingang
suffix-mill_input = {$content} Eingangsmaterial
suffix-mill_output = {$content} Output

# Tiles

tile_name-bridge = Brücke
tile_name-boat_hull = Bootsrumpf
tile_name-boat_anchor = Bootsanker
tile_name-diggable_spot = Umgrabbare Erde
tile_name-panning_spot = Waschplatz
tile-resource_clump-large_stump-name = Großer Baumstumpf
tile-resource_clump-hollow_log-name = Hohler Baumstamm
tile-resource_clump-meteorite-name = Meteoritenbrocken
tile-resource_clump-boulder-name = Felsbrocken
tile-resource_clump-mine_rock-name = Minengestein
tile-resource_clump-giant_cauliflower-name = Gigantischer Blumenkohl
tile-resource_clump-giant_melon-name = Gigantische Melone
tile-resource_clump-giant_pumpkin-name = Gigantischer Kirbis
tile-resource_clump-unknown = Unbekannter Ressourcenklumpen {$id}
tile-water-name = Wasser
tile-cooled_lava-name = Erkaltete Lava
tile-lava-name = Lava
tile-grass-name = {$grass_type ->
    *[1] Gras
    [2] Höhlengras
    [3] Frostgras
    [4] Lava-Gras
    [5] Höhlengras
    [6] Spinnweben
    [7] Blaues Gras
  }
tile-sprinkler-pressure_nozzle-prefix = Unter Druck gesetztes {$content}
tile-sprinkler-enricher-prefix = Anreicherndes {$content}
tile-fence_gate-suffix = {$name} {$is_open ->
    [0] {$less_info ->
      [0] Geschlossen
      *[1] {EMPTYSTRING()}
    }
    *[1] Geöffnet
  }
tile-building_animal_door-suffix = {$name} Stalltor {$is_open ->
    [0] {$less_info ->
      [0] geschlossen
      *[1] {EMPTYSTRING()}
    }
    *[1] geöffnet
  }
tile-mine_shaft-coal_bag = Rucksack
tile-mine_shaft-dirt = Erde
tile-mine_shaft-duggy_hole = Loch eines Buddlers
tile-pet_bowl-prefix = {$is_in_use ->
    [0] Unbenutzt
    *[1] {$is_empty ->
      [0] {EMPTYSTRING()}
      *[1] Leer
    }
  } {$name}

## Interactable Tiles

tile_name-ticket_machine = Kartenautomat
tile_name-movie_ticket_machine = Kinokartenautomat
tile_name-missed_reward_chest = Verlorene Schatzkiste
tile_name-traveling_cart = Reisewagen
tile_name-traveling_cart_pig = Schwein des Händlers
tile_name-feeding_bench = {$is_empty ->
    [1] Leere
    *[0] {EMPTYSTRING()}
  } Futterbankh
tile_name-special_quest_board = Schwarzes Brett
tile-museum_piece_showcase-suffix = {$content} Vitrine
tile_name-fridge = Kühlschrank
tile_name-mail_box = Briefkasten
tile-mail_box-unread_mail_count-prefix = {$mail_count} {$mail_count ->
    [1] ungelesener Brief im
    *[0] ungelesene Briefe im
  } {$content}
tile_name-stove = Herd
tile_name-sink = Waschbecken
tile-railroad-witch_statue-name = Hexenstatue
dynamic_tile-qi_nut_room-collection_box = Sammelbox
dynamic_tile-farm-grandpa_shrine = Schrein des Großvaters{SIGNOFNUMBER($candles) -> 
    [positive] : {$candles} {$candles -> 
      [1] Kerze 
      *[other] Kerzen 
    } entzündet
    *[other] {EMPTYSTRING()}
  }
tile-bundles-suffix = {$content} Bündel
tile-harvestable-prefix = Erntereif {$content}
tile-busy-prefix = Beschäftigt {$content}
tile_name-stepping_stone = Sprungbrett
tile_name-pathway = Wegweiser
tile_name-flooring = Bodenbelag
tile-volcano_dungeon-pressure_pad = Druckkissen
tile-volcano_dungeon-gate = Tor

## Entrances

tile-mine_ladder-name = Leiter
tile-mine_up_ladder-name = Leiter hoch
tile-mine_shaft-name = Schacht
tile-mine_elevator-name = Aufzug
tile-town_festival_exit-name = Fest verlassen
entrance_name-secret_woods_entrance = Zugang zu den Geheimen Wäldern
tile-entrance = Eingang
tile-door = Tür
tile-door_state-opened = geöffnet
tile-door_state-closed = geschlossen
tile-interior_door = Zimmertür

# Items

item_name-log = Log
item_name-magic_ink = Magische Tinte
item-haley_bracelet-name = Haley's Armband
item-lost_book-name = Verlorenes Buch
item-suffix-book = {$content} Buch
item-suffix-not_usable_here = {$content}, kann hier nicht verwendet werden!
item-quality_type = {$quality_index -> 
    [1] Silber
    [2] Gold
    [3] Gold
    *[4] Iridium
  } Quality
item-stamina_and_health_recovery_on_consumption = {SIGNOFNUMBER($stamina_amount) ->
    [positive] +{$stamina_amount} Energie und {SIGNOFNUMBER($health_amount) ->
        [positive] +{$health_amount} Gesundheit
        *[other] {EMPTYSTRING()}
      }
    [negative] -{$stamina_amount} Energie
    [zero] {SIGNOFNUMBER($health_amount) ->
        [positive] +{$health_amount} Gesundheit
        *[other] {EMPTYSTRING()}
      }
    *[other] {EMPTYSTRING()}
  }
item-required_item_info = benötigt {$name}
item-sell_price_info = Verkaufspreis: {$price}g
# In some cases we can't get the count of the dropped items and it is returned `0`
item-dropped_item-info = Fallengelassenes Item: {$item_count ->
    [0] {$item_name}
    [1] 1 {$item_name}
    *[other] {$item_count} mal {$item_name}
  }
item-crafting_recipe_info = {$name} {$is_cooking_recipe ->
    [0] (Herstellung)
    *[1] (kochen)
  } {$description}

building_name-shipping_bin = Versandkiste
building-parrot_perch-required_nuts = Die Papageien benötigen {$item_count ->
    [1] eine Nuss
    *[other] {$item_count} Nüsse
  }
building-parrot_perch-upgrade_state_idle = Leere Papageienstange
building-parrot_perch-upgrade_state_start_building = Die Papageien begannen mit dem Bauauftrag
building-parrot_perch-upgrade_state_building = Die Papageien erledigen den Bauauftrag
building-parrot_perch-upgrade_state_complete = Bauauftrag abgeschlossen

# NPCs

npc_name-old_mariner = Alter Seemann
npc_name-island_trader = Inselhändler
npc_name-emerald_gem_bird = Smaragd-Edelsteinvogel
npc_name-aquamarine_gem_bird = Aquamarin-Edelsteinvogel
npc_name-ruby_gem_bird = Rubin-Edelsteinvogel
npc_name-amethyst_gem_bird = Amethyst-Edelsteinvogel 
npc_name-topaz_gem_bird = Topas-Edelsteinvogel
npc_name-gem_bird_common = Edelsteinvogel
npc-farm_animal_info = {$name}, {$type}, {$age} {$age ->
    [1] Monat
    *[other] Monate
  }
npc_name-horse_with_no_name = Ein namenloses Pferd

# Event Tiles

event_tile-egg_festival_shop-name = Eierfest Verkaufsstand
event_tile-flower_dance_shop-name = Blumentanz Verkaufsstand
event_tile-soup_pot-name = Suppentopf
event_tile-spirits_eve_shop-name = Geisternacht Verkaufsstand
event_tile-stardew_valley_fair_shop-name = Sternentautaler Volksfest Verkaufsstand
event_tile-slingshot_game-name = Steinschleuder-Minispiel 
event_tile-purchase_star_tokens-name = Token-Verkäufer
event_tile-the_wheel-name = Das Glücksrad
event_tile-fishing_challenge-name = Angel-Minispiel 
event_tile-fortune_teller-name = Wahrsager-Stand 
event_tile-grange_display-name = Ausstellstand
event_tile-strength_game-name = Stein zerbrechen
event_tile-free_burgers-name = Kostenlose Überlebensburger
event_tile-feast_of_the_winter_star_shop-name = Fest des Wintersterns Verkaufsstand

patch-trash_bear-wanted_item = {$trash_bear_name} möchte {$item_name}!

# Terrain Utils

terrain_util-forage_crop_types = {$type ->
    [1] Frühlingszwiebel
    [2] Ingwer
    *[other] Essbare Pflanze
  }
terrain_util-fruit_tree_growth_stage = {$stage ->
    [0] Samen
    [1] Spross
    [2] Setzling
    [3] Busch
    *[other] Baum
  }
terrain_util-tree_type = {$type ->
    [1] Eiche
    [2] Ahorn
    [3] Kiefer
    [4] Eiche
    [5] Ahorn
    [6] Palme
    [7] Pilz
    [8] Mahagoni
    [9] Palme
    *[other] Unbekannte Baumtyp-Nummer {$type}
  }
terrain_util-tree-seedling = Setzling
terrain_util-tree_growth_stage = {$stage ->
    [1] Spross
    [2] Setzling
    [3] Busch
    [4] Busch
    *[other] Baum
  }
terrain_util-bush_type = {$type ->
    [0] Klein
    [1] mittlerer 
    [2] großer
    [3] Tee {$has_matured ->
      [0] Setzling
      *[1] Busch
    }
    [4] Goldene Walnuss 
    *[other] unbekannt
  }
terrain_util-bush = Busch
terrain_util-bush-town = Stadt
terrain_util-bush-greenhouse = Gewächshaus
terrain_util-tent = Zelt
terrain_util-tent_entrance = Zelteingang
terrain_util-crop-watered = Bewässert
terrain_util-crop-unwatered = Nicht bewässert
terrain_util-crop-dead = Tot
terrain_util-crop-soil = Erdreich
terrain_util-harvestable = Erntereif
terrain_util-fertilized = Gedüngt


# Object Categories

object_category-animals = Tiere
object_category-bridges = Brücken
object_category-buildings = Gebäude
object_category-bundles = Bündel
object_category-bushes = Büsche
object_category-containers = Behälter
object_category-crops = Nutzpflanzen
object_category-debris = Schutt
object_category-decor = Dekoration
object_category-doors = Türen
object_category-dropped_items = Fallengelassene Gegenstände
object_category-farmers = Bauern
object_category-fishing = Angeln
object_category-fishponds = Fischteiche
object_category-flooring = Bodenbelag
object_category-furniture = Möbel
object_category-interactables = interagierbar
object_category-machines = Maschinen
object_category-mine_items = Minengegenstände
object_category-npcs = NPC's
object_category-pending = unerledigt
object_category-quest_items = Quest items
object_category-ready = Bereit
object_category-resource_clumps = Ressourcen-Klumpen
object_category-trees = Bäume
object_category-water = Wasser
object_category-unknown = Unbekannt
object_category-other = Anderes

direction-north = Norden
direction-south = Süden
direction-east = Osten
direction-west = Westen
direction-north_west = Nordwesten
direction-north_east = Nordosten
direction-south_west = Südwesten
direction-south_east = Südosten
direction-current_tile = Aktuelles tile

inventory_util-empty_slot = Leerer Slot

common-unknown = Unbekannt

# The $name will be in the respective language i.e., it will be in french for french translation and so on. So use the language specific name in the square brackets except for the one with '*', that can have any value. Variants with '*' are marked as default.
common-util-pluralize_name = {$item_count} {PLURALIZE($item_count, $name)}
