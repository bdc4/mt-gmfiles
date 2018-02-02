//@description Start a new game 
		
if file_exists("savedata.ini")
	file_delete("savedata.ini")

if instance_exists(C) {
	with C {
		init_data(); 
		if showMenu {
			showMenu = false;
		}
		ITEMS[? "money"] = 10000;
	}
}
	
if META[? "roomStart"] != undefined {
	room_goto(META[? "roomStart"]);
	if instance_exists(obj_player_TD)
		instance_destroy(obj_player_TD);
} else {
	show_debug_message("roomStart is undefined in META!")
}