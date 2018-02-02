///@description Get all maps for saving/writing to savedata.ini

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