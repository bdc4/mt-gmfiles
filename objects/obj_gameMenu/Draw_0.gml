/// Draw Menu Buttons
//

if file_exists("savedata.ini") {
	// Draw button if load data exists
	drawLoadButton = true;	
}

/*
if room == room_ship {
	draw_text(room_width/2,room_height-32*4,"This concludes the demo!\nThanks for playing.\n\nPress ESC to open the menu.");	
}
*/
if room == room_launchpad {C.showMenu = true;}
//Draw CREW
if !instance_exists(obj_crewDisplay) and 
((room != room_cantina and room != room_menu) or room == room_launchpad or C.showMenu) {
	instance_create_depth(0,0,depth,obj_crewDisplay);
}




//u_draw_menu_buttons();
/*
if (room == room_menu) || C.showMenu {
	if drawNewGame {
		
	}
}
*/