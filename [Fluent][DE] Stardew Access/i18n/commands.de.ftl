# Read Tile Commands

commands-read_tile-read_tile_toggle = Tile vorlesen ist {$is_enabled ->
    [0] deaktiviert.
    *[1] aktiviert.
  }
commands-read_tile-watered_toggle = Vorlesen von {$is_enabled ->
    [0] nicht bewässert
    *[1] bewässert
  } für Nutzpflanzen.
commands-read_tile-flooring_toggle = Vorlesen der Bodenbeläge ist {$is_enabled ->
    [0] deaktiviert.
    *[1] aktiviert.
  }

# Tile Marking Commands

commands-tile_marking-build_list-building_info = Index {$index}: {$name} auf {$x_position}x und {$y_position}y
commands-tile_marking-build_list-buildings_list = Verfügbare Gebäude:
  {$building_infos}
  Öffne das Befehlsmenü und verwende Pageup und Pagedown, um die Liste zu überprüfen.
commands-tile_marking-build_list-no_building = Keine geeigneten Gebäude gefunden.

commands-tile_marking-mark-location_marked =  Position {$x_position}x {$y_position}y zu  index {$index} hinzugefügt.
commands-tile_marking-mark-not_in_farm = Dieser Befehl kann nur auf dem Bauernhof ausgeführt werden.
commands-tile_marking-mark-index_not_entered = Bitte Index eingeben!
commands-tile_marking-mark-wrong_index = Index kann nur eine Zahl von 0 bis 9 sein.

commands-tile_marking-mark_list-mark_info = Index {$index}: {$x_position}x und {$y_position}y
commands-tile_marking-mark_list-marks_list = Markierte Positionen:
  {$mark_infos}
  Öffne das Befehlsmenü und verwende Pageup und Pagedown, um die Liste zu überprüfen.
commands-tile_marking-mark_list-not_marked = Keine Positionen markiert.

commands-tile_marking-build_sel-cannot_select = Gebäude nicht auswählbar!
commands-tile_marking-build_sel-building_index_not_entered = Gebe auch den Index des Gebäudes ein! Verwende buildlist.
commands-tile_marking-build_sel-marked_index_not_entered = Gebe auch den Index der markierten Position ein! marklist verwenden.
commands-tile_marking-build_sel-wrong_index = Der Index muss eine Zahl sein!
commands-tile_marking-build_sel-no_building_found = Kein Gebäude mit dem index {$index} gefunden. Verwende buildlist.
commands-tile_marking-build_sel-no_marked_position_found = Keine markierte Position mit dem Index {$index} gefunden.

# Other Commands

commands-other-tts_toggle = Sprachausgabe ist {$is_enabled ->
    [0] deaktiviert.
    *[1] aktiviert.
  }
commands-other-warnings_toggle = Warnungen vorlesen ist {$is_enabled ->
    [0] deaktiviert.
    *[1] aktiviert.
  }
commands-other-snap_mouse_toggle = Maus snap ist {$is_enabled ->
    [0] deaktiviert.
    *[1] aktiviert.
  }
commands-other-hns_percentage_toggle = Gesundheit und Energie im {$is_enabled ->
    [0] normalen
    *[1] prozentualen
  } format vorlesen.
commands-other-refresh_mod_config = Mod einstellungen wurden aktualisiert!
commands-other-refresh_screen_reader = Sprachausgabe aktualisiert!
