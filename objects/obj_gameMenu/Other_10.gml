/// @description Insert description here
// You can write your code in this editor

if other.uiControlName == "newgame" {
	var newGameStr = "Delete any current progress and start a new game?";

	if file_exists("savedata.ini") {
		msg = show_question_async(newGameStr);
		//show_debug_message("New Game Button Clicked!")
		if variable_instance_exists(id, "ldBtn")
			ldBtn.x = room_width*2;
	} else {
		start_new_game();
	}
}

if other.uiControlName == "loadgame" {
	if file_exists("savedata.ini") {
	
		load_ini(ITEMS, "ITEMS");
		load_ini(SHIP, "SHIP");
		for (var i=0; i<array_length_1d(C.stationNames); i++)
			load_ini(STATIONS[? i], "STATION: "+string_upper(C.stationNames[i]));
	
		for (var i=0; i<ds_map_size(CREW); i++) {
			load_ini(CREW[? i], "CREW "+string(i));	
		}
	
		for (var i=0; i<ds_map_size(SYSTEMS); i++) {
			load_ini(SYSTEMS[? i], "SYSTEMS - "+string_upper(SYSNAMES[i]));
		}
	
		load_ini(META,"METADATA");
		targetRoom = asset_get_index(META[? "room"]); 
	
		if C.showMenu {C.showMenu = false;}
	
		if (room_exists(room_get_name(targetRoom)) 
		and targetRoom != room_menu and targetRoom != -1) {
				room_goto(targetRoom);
		} else {
			show_debug_message("Loading room from .ini failed!");
			show_message("The save file appears to be corrupted. Try quitting the game and reopening it. If that doesn't work, try restarting your device. If you are still experiencing issues, email support@marcopolostudios.net")
		}
	
	} else {
		show_debug_message("No savedata.ini file found!");
	}

}

if other.uiControlName == "quitgame" {
	with C {
		for (var i=0; i<array_length_1d(stationNames)-1; i++) {
			save_ini(STATIONS[? i], "STATION: "+string_upper(stationNames[i]));
		}
	
		save_ini(ITEMS,"ITEMS");
		save_ini(SHIP, "SHIP");
		save_ini(META, "METADATA");


		//save_ini(player,"PLAYER DATA");
		for (var i=0; i<4; i++) {
			save_ini(CREW[? i], "CREW "+string(i));
			save_ini(SYSTEMS[? i], "SYSTEMS - "+string_upper(SYSNAMES[i]));
		}	
	}
	
	game_end();	
}

if other.uiControlName == "mainmenu" {
	if room == room_interior or room == room_cargo or room == room_cockpit {
		META[? "room"] = "room_ship";
	} else {
		META[? "room"] = room_get_name(room);	
	}
	
	room_goto(room_menu);
}