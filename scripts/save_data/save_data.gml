///@description Get all maps for saving/writing to savedata.ini

//Gather current metadata BEFORE writing to savefile
if argument0 {
	if room == room_interior or room == room_cargo or room == room_cockpit {
		META[? "room"] = "room_ship";
	} else {
		META[? "room"] = room_get_name(room);	
	}

	if instance_exists(obj_ship_controller) {
		with obj_ship_controller {
			META[? "attn"] = attn;
			META[? "eve"] = eve;
		}
	}
}

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