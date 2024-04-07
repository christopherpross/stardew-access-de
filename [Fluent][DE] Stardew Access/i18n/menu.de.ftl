# Menus

## Common Stuff

### Common UI elements

common-ui-ok_button = OK Schalter
common-ui-cancel_button = Abbrechen Schalter
common-ui-confirm_button = Bestätigen Schalter
common-ui-drop_item_button = Gegenstand Fallenlassen Schalter
common-ui-trashcan_button = Mülleimer
common-ui-organize_inventory_button = Inventar Organisieren Schalter
common-ui-community_center_button = Gemeinschaftszentrum Schalter
common-ui-scroll_up_button = Hoch-scrollen Schalter
common-ui-scroll_down_button = Runter-Scrollen Schalter
common-ui-next_page_button = Nächste Seite Schalter
common-ui-previous_page_button = Vorherige Seite Schalter
common-ui-close_menu_button = Menü Schließen Schalter
common-ui-back_button = Zurück Schalter
common-ui-forward_button = Vorwärts Schalter
common-ui-equipment_slots = {$slot_name ->
    [hat] Hut
    [left_ring] Linker Ring
    [right_ring] Rechter Ring
    [boots] Stiefel
    [shirt] Shirt
    [pants] Hose
    *[other] {EMPTYSTRING()}
  } slot{$is_empty ->
    [0] : {$item_name}, {$item_description}
    *[1] {EMPTYSTRING()}
  }

### Options Element

options_element-button_info = {$label} Schalter
options_element-text_box_info = {$label} Eingabefeld {$value ->
    [null] {EMPTYSTRING()}
    *[other] : {$value}
  }
options_element-checkbox_info = {$is_checked ->
    [0] Deaktiviert
    *[1] Aktiviert
  } {$label} Kontrollfeld
options_element-dropdown_info = {$label} dropdown, option {$selected_option} ausgewählt
options_element-slider_info = {$slider_value}% {$label} Schieberegler
options_element-plus_minus_button_info = {$selected_option} ausgewählt von {$label}
options_element-input_listener_info = {$label} ist an {$buttons_list} gebunden. Linksklick zum Ändern.

## Custom Menus

### Tile Info Menu

menu-tile_info-mark_tile = Markiere dieses Tile
menu-tile_info-select_marking_index = wähle index
menu-tile_info-add_to_user_tiles_data = Füge dieses Tile zu den benutzerdefinierten Tiles hinzu
menu-tile_info-detailed_tile_info = Detailierte Tile-Info vorlesen
menu-tile_info-data_exists = Die Daten für dieses Tile existieren bereits, möchtest du...
menu-tile_info-edit_existing_data = Die Daten bearbeiten?
menu-tile_info-delete_existing_data = die Daten löschen?

### Tile Data Entry Menu

menu-tile_data_entry-none = Keine
menu-tile_data_entry-heading_label = Tile {$tile_x}x {$tile_y}y in {$location_name}
menu-tile_data_entry-tile_name_text_box_label = Tile name
menu-tile_data_entry-tile_name_empty = Tile name darf nicht null oder leer sein!
menu-tile_data_entry-categories_drop_down_label = Kategorie
menu-tile_data_entry-mod_dependency_drop_down_label = Mod abhängigkeit
menu-tile_data_entry-event_check_box_label = Prüfe auf aktuelles {$is_festival ->
    [0] {$is_wedding ->
        [0] event,
        *[1] Hochzeit,
      }
    *[1] Fest: {$festival_name},
  } id: {$event_id}
menu-tile_data_entry-farm_type_check_box_label = Prüfe auf aktuellen Hoftyp {$farm_type}
menu-tile_data_entry-farm_house_upgrade_level_drop_down_label = Prüfe auf aktuelles Ausbaulevel des Bauernhauses
menu-tile_data_entry-quest_drop_down_label = Prüfe ob der Spieler ein Quest in arbeit hat
menu-tile_data_entry-quest_drop_down-manual_entry_option = Gebe die Quest-Id manuell ein
menu-tile_data_entry-manual_quest_id_text_box_label = Quest id
menu-tile_data_entry-joja_member_checkbox_label = Prüfe ob der Spieler ein Joja Mitglied ist

## Bundle Menus

### Common

menu-bundle-completed-prefix = Vollständig {$content}

### JoJa CD Menu

menu-joja_cd-project_info = {$name}, Preis: {$price}g, Beschreibung: {$description}
menu-joja_cd-project_name = {$project_index ->
    [0] Bus-Reparatur
    [1] Loren-Reparatur
    [2] Brücken-Reparatur
    [3] Gewächshaus
    [4] Schimmernder Felsen
    *[other] Unbekannt
  }

### Junimo Note Menu

menu-junimo_note-scrambled_text = Verschlüsselter Text
menu-junimo_note-current_area_info-prefix = Gebiet: {$area_name}, {$completion_reward}, 
menu-junimo_note-bundle_open_button = {$bundle_name} Bündel
menu-junimo_note-input_slot = Input Slot {$index}
menu-junimo_note-collect_rewards = Belohnungen Einsammeln
menu-junimo_note-next_area_button = Nächstes Gebiet schalter
menu-junimo_note-previous_area_button = Vorheriges Gebiet Schalter
menu-junimo_note-back_button = Zurück Schalter
menu-junimo_note-purchase_button = Kaufen Schalter

## Donation Menus

menu-donation_common-donatable_item_in_inventory-prefix = Spendbar {$content}

### Field Office Menu

# TODO maybe make a range function
menu-field_office-incomplete_slot_names = {$slot_index ->
   [0] Großes Tier 
   [1] Großes Tier 
   [2] Großes Tier 
   [3] Großes Tier 
   [4] Großes Tier 
   [5] Großes Tier 
   [6] Schlange
   [7] Schlange
   [8] Schlange
   [9] Fledermaus
   [10] Frosch
   *[other] Spende
  } slot
menu-field_office-completed_slot_info = Slot {$slot_index} abgeschlossen: {$item_name_in_slot}

### Museum Menu

menu-museum-slot_info = Slot {$x_position}x {$y_position}y

## Game Menus

menu-game_menu-tab_names = {$tab_name} Tab {$is_active ->
    [0] {EMPTYSTRING()}
    *[1] ausgewählt
  }

### Inventory Page

menu-inventory_page-money_info_key = {$farm_name}, {$current_funds}, {$total_earnings}{SIGNOFNUMBER($festival_score) ->
    [positive] , Fest Punkte: {$festival_score}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($golden_walnut_count) ->
    [positive] , Goldene Walnuss Anzahl: {$golden_walnut_count}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($qi_gem_count) ->
    [positive] , Qi Edelsteine: {$qi_gem_count}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($qi_club_coins) ->
    [positive] , Qi Clubmünzen: {$qi_club_coins}
    *[other] {EMPTYSTRING()}
  }

### Social Page

menu-social_page-npc_info = {$name}{$has_talked ->
    [0] , Du hast noch nicht mit diesem Charakter gesprochen
    *[1] {EMPTYSTRING()}
    [2] , du hast diesen Charakter noch nicht getroffen
  }{$relationship_status ->
    [null] {EMPTYSTRING()}
    *[other] , {$relationship_status}
  }, {$heart_level} {$heart_level ->
    [1] Herz
    *[other] Herzen
  }, Du hast diesem Charakter {$gifts_this_week} {$gifts_this_week ->
    [1] Geschenk
    *[other] Geschenke
  } diese Woche gegeben.

menu-social_page-player_info = {$name}{$relationship_status ->
    [null] {EMPTYSTRING()}
    *[other] , {$relationship_status}
  }

### Collections Page
menu-collections_page-tabs = {$tab_name} Registerkarte {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] ausgewählt
  }
menu-collections_page-unachieved = Unerreicht
menu-collections_page-uncaught = nicht gefangen
menu-collections_page-uncooked = nicht gekocht
menu-collections_page-unfound = nicht gefunden
menu-collections_page-unshipped = nicht versendet

### Crafting Page

menu-crafting_page-recipe_info = {$produce_count} {$name}, {$is_craftable ->
    [0] nicht herstellbar
    *[1] herstellbar
  }, Bestandteile: {$ingredients}, Beschreibung: {$description}, {$buffs}
menu-crafting_page-unknown_recipe = Unbekanntes Rezept
menu-crafting_page-previous_recipe_list_button = Vorheriges Rezept Schalter
menu-crafting_page-next_recipe_list_button = Nächstes Rezept Schalter

### Exit Page

menu-exit_page-exit_to_title_button = Spiel beenden und zum Hauptmenü zurückkehren Schalter
menu-exit_page-exit_to_desktop_button = Spiel beenden und zum Desktop zurückkehren Schalter

### Skills Page

menu-skills_page-player_info = {$name}, {$title}{$golden_walnut_count ->
    [0] {EMPTYSTRING()}
    [1] , eine Goldene Walnuss
    *[other] , {$golden_walnut_count} Goldene Walnüsse
  }{$qi_gem_count ->
    [0] {EMPTYSTRING()}
    [1] , ein Qi Edelstein
    *[other] , {$qi_gem_count} Qi Edelsteine  }
menu-skills_page-skill_info = {$name} auf level {$level},
  {$buffs}

### Animal Page

menu-animal_page-animal_info = {$name}, {$type}{$heart_count ->
    [-1] {EMPTYSTRING()}
    [1] , ein Herz
    *[other] , {$heart_count} Herzen
  }{$has_been_pet ->
    [0] , wurde noch nicht gestreichelt
    *[other] {EMPTYSTRING()}
  }{$has_received_animal_cracker ->
    [0] {EMPTYSTRING()}
    *[other], Tiercracker gefressen
  }

## Menus With Inventory

### Forge Menu

menu-forge-start_forging_button = Schmieden beginnen Schalter
menu-forge-unforge_button = Entschmieden Schalter
menu-forge-weapon_input_slot = {$is_empty ->
    [0] Weapon slot: {$item_name}
    *[1] Waffe, Werkzeug oder Ring hier platzieren
  }
menu-forge-gemstone_input_slot = {$is_empty ->
    [0] Edelstein slot: {$item_name}
    *[1] Edelstein oder Ring hier platzieren
  }

### Geode Menu

menu-geode-geode_input_slot = Geode hier platzieren
menu-geode-received_treasure_info = {$treasure_name} erhalten

### Item Grab Menu

menu-item_grab-last_shipped_info = Zuletzt verschickt: {$shipped_item_name}
menu-item_grab-add_to_existing_stack_button = Zu bestehenden Stapel hinzufügen Schalter
menu-item_grab-special_button = Special Schalter
menu-item_grab-color_picker_button = Farbe Auswählen: {$is_enabled ->
    [0] deaktiviert
    *[1] aktiviert
  }
menu-item_grab-chest_colors =
  {$index ->
   [0] Brustfarbe: Braun (Standard)
   [1] Blau
   [2] Hellblau
   [3] Türkis
   [4] Aqua
   [5] Grün
   [6] Limonengrün
   [7] Gelb
   [8] Helles Orange
   [9] Orange
   [10] Rot
   [11] Dunkelrot
   [12] Hellrosa
   [13] Rosa
   [14] Magenta
   [15] Lila
   [16] Dunkelviolett
   [17] Dunkelgrau
   [18] Mittelgrau
   [19] Hellgrau
   [20] Weiß
   *[other] Unbekannt
  } {$is_selected ->
  [0] {EMPTYSTRING()}
  *[1] ausgewählt
  }

### Shop menu

menu-shop-buy_price_info = Kaufpreis: {$price}g
menu-shop-recipe_ingredients_info = Zutaten: {$ingredients_list}
menu-shop-pet_license-suffix = {$content} Lizenz

### Tailoring Menu

menu-tailoring-start_tailoring_button = Schneidern beginnen Schalter
menu-tailoring-cloth_input_slot = {$is_empty ->
    [0] Kleidungs-Slot: {$item_name}
    *[1] Stoff oder färbbare Kleidung hier plazieren
  }
menu-tailoring-spool_slot = {$is_empty ->
    [0] Spule: {$item_name}
    *[1] Materialien hier platzieren
  }

## Misc Patches

### Dialogue Box

menu-dialogue_box-npc_dialogue_format = {$is_appearing_first_time ->
    [0] {EMPTYSTRING()}
    *[1] {$npc_name} sagte,
  } {$dialogue}

## Other Menu Patches

### Animal Query Menu

menu-animal_query-animal_info =
  {$name}, {$is_baby ->
    [0] {$type}
    *[1] Baby {$type}
  }, {$heart_count ->
    [1] ein Herz
    *[other] {$heart_count} Herzen
  }, {$age ->
    [1] Ein Monat
    *[other] {$age} Monate
  } alt{$parent_name ->
    [null] {EMPTYSTRING()}
    *[other] , Älternteil: {$parent_name}.
  }, {$mood}{$has_received_animal_cracker ->
    [0] {EMPTYSTRING()}
    *[other], Tiercracker gefressen
  }
menu-animal_query-confirm_selling_button = Tier verkaufen bestätigen Schalter
menu-animal_query-cancel_selling_button = Tier verkaufen Abbrechen Schalter
menu-animal_query-selling_button = Verkaufe für {$price}g Schalter
menu-animal_query-move_home_button = Ändere das Zuhause des Tieres Schalter
menu-animal_query-text_box = Name des Tieres Eingabefeld
menu-animal_query-allow_reproduction_button =
  Schwangerschaft erlauben, {$checkbox_value ->
    [0] deaktiviert
    *[1] aktiviert
  } Schalter

### Building Skin Menu

# Cabin skins: [0 = default] [1 = plank] [2 = log] [3 = neighbour] [4 = rustic] [5 = beach] [6 = trailer]
# Pet bowl skins: [0 = default] [1 = stone] [2 = hay]

menu-building_skin-skin_info = {$type ->
    [cabin] {$index ->
        [0] Standard Hütte
        [1] {$id}
        [2] {$id}
        [3] {$id}
        [4] {$id}
        [5] {$id}
        [6] {$id}
        *[other] Unbekannter Hütten-Skin, id:{$id}, index:{$index}
      }
    [pet_bowl] {$index ->
        [0] Standard Wasserschüssel 
        [1] {$id}
        [2] {$id}
        *[other] Unbekannter Wasserschüssel-Skin, id:{$id}, index:{$index}
      }
    *[other] {$index}: {$id}
  }
menu-building_skin-next_skin_button = Nächster Skin
menu-building_skin-previous_skin_button = Vorheriger Skin

### Carpenter Menu

menu-carpenter-blueprint_info = {$name}, Preis: {$price}g, Zutaten: {$ingredients_list}, {$days ->
    [0] ist sofort fertiggestellt
    [1] Es wird einen Tag für die Fertigstellung benötigt
    *[other] es wird {$days} Tage für die Fertigstellung benötigt
  }, Abmessungen: {$width} Breite und {$height} Höhe, Beschreibung: {$description}
menu-carpenter-previous_blueprint_button = Vorheriger Blueprint Schalter
menu-carpenter-next_blueprint_button = Nächster Blueprint Schalter
menu-carpenter-move_building_button = Gebäude verschieben Schalter
menu-carpenter-paint_building_button = Gebäude streichen Schalter
menu-carpenter-appearance_button = Aussehen ändern Schalter
menu-carpenter-demolish_building_button = Gebäude abreißen{$can_demolish ->
    [0] , nicht möglich
    *[1] {EMPTYSTRING()}
  } Schalter
menu-carpenter-construct_building_button = Gebäude bauen{$can_construct ->
    [0] , nicht möglich
    *[1] {EMPTYSTRING()}
  } Schalter

### Choose From List Menu

menu-choose_from_list-ok_button = {$option} auswählen button
menu-choose_from_list-previous_button = Vorherige option: {$option} Schalter
menu-choose_from_list-next_button = nächste option: {$option} Schalter

### Confirmation Dialogue Menu

# TODO try this
# menu-confirmation_dialogue-ok_button = {$dialogue_message}
#   {I18N("common-ui-ok_button", mod:"shoaib.stardewaccess")}
menu-confirmation_dialogue-ok_button = {$dialogue_message}
  Ok Schalter
menu-confirmation_dialogue-cancel_button = {$dialogue_message}
  Abbrechen Schalter
menu-confirmation_dialogue-copy_button = {$dialogue_message}
  in die Zwischenablage kopieren Schalter

### Item List Menu

menu-item_list-ok_button = {$title}
  {$item_list}
  Seite {$current_page} von {$total_pages}
  Ok Schalter

### Letter Viewer Menu

menu-letter_viewer-letter_message = {$message_content}{$is_money_included ->
    [0] {EMPTYSTRING()}
    *[1] 
      {$received_money}g erhalten
  }{$learned_any_recipe ->
    [0] {EMPTYSTRING()}
    *[1] 
      {$learned_recipe} Rezept gelernt
  }{$is_quest ->
    [0] {EMPTYSTRING()}
    *[1] 
      Linksklick um das Quest zu akzeptieren
  }
menu-letter_viewer-pagination_text-prefix = Seite {$current_page} von {$total_pages}
  {$content}
menu-letter_viewer-grabbable_item_text = Linksklick um {$name} zu erhalten
menu-letter_viewer-image_note = {$note_id ->
    [11] Bild einer jungen Marnie, die mit dem Kleinkind Jas Händchen hält. Sie sind umgeben von Nutztieren auf der Ranch.
    [16] Eine Schatzkarte, auf der ein großer Felsbrocken nordwestlich der Eisenbahnschienen abgebildet ist. Ein rotes X befindet sich rechts neben dem Felsbrocken.
    [17] Eine Schatzkarte, auf der der Fluss nördlich des Joja Markt's mit einem roten X in der nordöstlichsten Ecke abgebildet ist
    [18] Eine Schatzkarte, die eine Bank in der südöstlichen Ecke der Calico-Wüste zeigt, mit einem roten X im Südwesten.
    [19] Eine Darstellung der Weidengasse 1 mit einer Reihe von Pfeilen. Ein Quadrat markiert den Raum vor der Haustür. Die Sequenz lautet wie folgt: links, hoch, rechts, hoch, rechts, runter, links, runter, links, runter, Häkchen.
    [20] Eine Darstellung des Marktplatzes mit einer Reihe von Pfeilen. Die Darstellung kennzeichnet einen Bereich genau in der Mitte des Platzes. Die Sequenz lautet wie folgt: rechts, runter, rechts, hoch, rechts, hoch, rechts, runter, links, hoch, links, hoch, rechts, hoch, links, hoch, links, Häkchen.
    [21] Eine Darstellung des großen Busches nordwestlich der Brücke zum Strand, bei Nacht. Eine Uhr zeigt die Uhrzeit 12:40 an.
    *[other] Bild ohne Beschreibung {$note_id}
  }

### Level Up Menu

menu-level_up-profession_chooser_heading = {$title}. Wähle einen neuen Beruf.
menu-level_up-profession_chooser_button = Ausgewählt: {$profession_description_list}
  Linksklick zum auswählen.
menu-level_up-ok_button = {$title}, {$extra_info}, gelernte Rezepte: {$learned_recipes}, Linksklick zum schließen.

### Naming Menu

menu-naming-done_naming_button = Fertig Schalter
menu-naming-random_button = Zufällig Schalter


### Number Selection Menu

menu-number_selection-button-left_button = Wert verringern Schalter
menu-number_selection-button-right_button = Wert erhöhen Schalter
menu-number_selection-value_and_price_info = {$value} {$price ->
    [0] {EMPTYSTRING()}
    *[other] Preis: {$price}
  }

### Pond Query Menu

menu-pond_query-change_netting_button = Netz ändern Schalter
menu-pond_query-empty_pond_button = Teich leeren Schalter
menu-pond_query-pond_info = {$pond_name}, {$population_info}, {$required_item_info}, Status: {$status}

### Purchase Animal Menu

menu-purchase_animal-animal_info = {$name}, Preis: {$price}g, Beschreibung: {$description}
menu-purchase_animal-first_time_in_menu_info = Geben Sie den Namen des Tieres in das Eingabefeld Name ein.
menu-purchase_animal-random_name_button = Zufälliger Name Schalter
menu-purchase_animal-animal_name_text_box = Name Eingabefeld{$value ->
    [null] {EMPTYSTRING()}
    *[other] , Wert: {$value}
  }

### Title Text Input Menu

menu-title_text_input-paste_button = Einfügen Schalter

### Shipping Menu

menu-shipping-total_money_received_info = {$money}g erhalten. Linksklick zum Speichern.
menu-shipping-money_received_from_category_info = {$money}g erhalten von {$category_name}.

## Quest Patches

### Billboard Menu

menu-billboard-calendar-day_info = {$is_current ->
    [0] {EMPTYSTRING()}
    *[1] aktuell
  } Day {$day ->
    [1] {$day} im {$season} Jahr {$year}
    *[other] {$day}
  }{$extra_info ->
    [null] {EMPTYSTRING()}
    *[other] , {$extra_info}
  }
menu-billboard-daily_quest-accept_quest-suffix =
  Linksklick um das Quest zu akzeptieren.

### Quest Log Menu (Journal Menu)

menu-quest_log-cancel_quest_button = Quest abbrechen Schalter
menu-quest_log-reward_button = Belohnung erhalten Schalter
menu-quest_log-quest_brief = {$name} {$is_completed ->
    [0] {SIGNOFNUMBER($days_left) ->
      [positive] , {$days_left} {$days_left ->
        [1] Tag
        *[other] Tage
      } verbleibend
      *[other] {EMPTYSTRING()}
    }
    *[1] abgeschlossen!
  }
menu-quest_log-quest_detail = {$name} {$is_completed ->
    [0] , Beschreibung: {$description}, Ziele: {$objectives_list} {SIGNOFNUMBER($days_left) ->
      [positive] , {$days_left} {$days_left ->
        [1] Tag
        *[other] Tage
      } verbleibend
      *[other] {EMPTYSTRING()}
    }
    *[1] abgeschlossen! {$has_received_money ->
      [0] {EMPTYSTRING()}
      *[1] {$received_money}g erhalten
    }
  }

### Special Orders Board Menu

menu-special_orders_board-quest_details = {$name}, Beschreibung: {$description}, Ziele: {$objectives_list}{$is_timed ->
    [0] {EMPTYSTRING()}
    *[1] , Zeit: {$days} {$days ->
      [1] Tag
      *[other] Tage
    }
  }{$has_money_reward ->
    [0] {EMPTYSTRING()}
    *[1] , Belohnung: {$money}
  }
menu-special_orders_board-accept_button = {$is_left_quest ->
    [0] rechts
    *[1] Links
  } Quest: {$quest_details}
  Linksklick um dieses Quest zu akzeptieren.
menu-special_orders_board-quest_in_progress = In arbeit: {$quest_details}
menu-special_orders_board-quest_completed = Quest {$name} abgeschlossen! Öffne dein journal um deine Belohnung zu erhalten.

## Title Menus

### Title Menu

menu-title-new_game_button = Neues Spiel Schalter
menu-title-load_button = Laden Schalter
menu-title-co_op_button = Mehrspieler Schalter
menu-title-language_button = Sprache Schalter
menu-title-about_button = Über Schalter
menu-title-mute_music_button = Musik Stummschalten Schalter
menu-title-fullscreen_button = Fullscreen: {$is_enabled ->
    [0] deaktiviert
    *[1] aktiviert
  }
menu-title-exit_button = Spiel beenden Schalter
menu-title-invite_button = Einladen Schalter

### Load Game Menu

menu-load_game-delete_farm_button = {$name} Bauernhof löschen
menu-load_game-delete_farm_confirmation_text = Wirklich Bauernhof löschen?
menu-load_game-farm_details = {$index ->
    [-1] {EMPTYSTRING()}
    *[other] {$index}
  } {$farm_name} Bauernhof, {$farmer_name}, {$money ->
    [-1] {EMPTYSTRING()}
    *[other] {$money}g
  }, {$date}, {$hours_played} Stunden gespielt

### Co-op Menu

menu-co_op-join_lan_game_button = Einem Spiel beitreten
menu-co_op-host_new_farm_button = Einen neuen Bauernhof hosten
menu-co_op-refresh_button = aktualisieren Schalter
menu-co_op-join_tab_button = Beitreten Registerkarte {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] ausgewählt
  }
menu-co_op-host_tab_button = Hosten Registerkarte {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] ausgewählt
  }
menu-co_op-friend_hosted_farm_details = {$farm_name}, Besitzer: {$owner_name}, {$date}
