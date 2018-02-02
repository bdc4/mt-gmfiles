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