/// @description Insert description here
// You can write your code in this editor

if other.uiControlName == "newgame" {
	var newGameStr = "Delete any current progress and start a new game?";

	if file_exists("savedata.ini") {
		//Hide continue button TODO
		
		msg = show_question_async(newGameStr);
	} else {
		start_new_game();
	}
}

if other.uiControlName == "loadgame" {
	load_data();
}

if other.uiControlName == "quitgame" {
	if file_exists("savedata.ini") save_data();
	game_end();	
}

if other.uiControlName == "mainmenu" {
	if room == room_interior or room == room_cargo or room == room_cockpit {
		META[? "room"] = "room_ship";
	} else {
		META[? "room"] = room_get_name(room);	
	}
	C.showMenu = false;
	save_data();
	room_goto(room_menu);
}

if other.uiControlName == "savegame" {
	if room == room_interior or room == room_cargo or room == room_cockpit {
		META[? "room"] = "room_ship";
	} else {
		META[? "room"] = room_get_name(room);	
	}
	C.showMenu = false;
	save_data();
	update_textbox("Game Saved Successfully!");
}