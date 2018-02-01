if (room == room_menu) || C.showMenu {
	/*
	draw_set_color(c_black);
	draw_rectangle(
		width/2-sprite_get_width(spr_newGameBtn),
		height/2-sprite_get_height(spr_newGameBtn),
		width/2+sprite_get_width(spr_newGameBtn),
		height/2+sprite_get_height(spr_newGameBtn)*3,
		false
	);
	draw_set_color(c_white);
	draw_rectangle(
		width/2-sprite_get_width(spr_newGameBtn),
		height/2-sprite_get_height(spr_newGameBtn),
		width/2+sprite_get_width(spr_newGameBtn),
		height/2+sprite_get_height(spr_newGameBtn)*3,
		true
	);
	*/
	//Draw CREW and ITEMS
	if room != room_menu {
		if !instance_exists(obj_crewDisplay)&& room != room_cantina
			instance_create_depth(0,0,depth,obj_crewDisplay);
	
		#region Draw ITEMS
		//Draw ITEMS
		draw_set_halign(fa_left)
		itemStr = "";
		for (var i = 0; i < array_length_1d(ITEMNAMES); ++i) {
		
			itemStr += ITEMNAMES[i]+": "+string(ITEMS[? ITEMNAMES[i]])+"\n";
		}
		/*
		draw_set_color(c_black);	
		draw_rectangle(
			room_width*1/16-32,
			room_height*2/4-32,
			room_width*1/16+142,
			room_height*3/4,
			false
		);
		draw_set_color(c_white);
		draw_rectangle(
			room_width*1/16-32,
			room_height*2/4-32,
			room_width*1/16+142,
			room_height*3/4,
			true
		);
		*/
		draw_text(room_width*1/16-12,room_height/2,"ITEMS:\n"+itemStr);
		#endregion	
	}

	if drawNewGame {
		if !variable_instance_exists(id, "ngBtn") { //!instance_exists(obj_newGameBtn) {
			ngBtn = instance_create_depth(
				width/2,
				height/2,
				depth-10,
				ui_button_ani
			);
			
			with ngBtn {
				//uiTextValue = "New Game";
				uiButtonSprite = spr_newGameBtn;
				uiSetWidth = sprite_get_width(uiButtonSprite);
				uiSetHeight = sprite_get_height(uiButtonSprite);
				uiSpriteScale = 0;
				uiDrawBackColor = false;
				uiBackColor = c_green;
				uiEventObject = obj_gameMenu;
				uiControlName = "newgame";
				uiMoveX = room_width/8;
				uiAniMove = true;
				uiHoverMode = 2;
				uiHoverInfo = 1.25;
			}
		}
	}

	if drawLoadButton && file_exists("savedata.ini") {
		if !variable_instance_exists(id, "ldBtn") { //!instance_exists(obj_newGameBtn) {
			ldBtn = instance_create_depth(
				width/2,
				height/2+sprite_get_height(spr_newGameBtn)+12,
				depth-10,
				ui_button_ani);
			
			with ldBtn {
				uiButtonSprite = spr_loadBtn;
				uiSetWidth = sprite_get_width(uiButtonSprite);
				uiSetHeight = sprite_get_height(uiButtonSprite);
				uiSpriteScale = 0;
				uiDrawBackColor = false;
				uiBackColor = c_green;
				uiEventObject = obj_gameMenu;
				uiControlName = "loadgame";
				uiMoveX = room_width/8;
				uiAniMove = true;
				uiHoverMode = 2;
				uiHoverInfo = 1.25;
			}
		}
	}
	
	if drawQuitButton
		instance_create_depth(
			width/2,
			height/2+(sprite_get_height(spr_loadBtn))*2+8,
			depth-10,
			obj_quitBtn);

} else {
	//instance_activate_all();
	if instance_exists(obj_crewDisplay) && room != room_launchpad
		instance_destroy(obj_crewDisplay);
	if instance_exists(obj_newGameBtn) 
		instance_destroy(obj_newGameBtn);
	if instance_exists(obj_loadBtn)
		instance_destroy(obj_loadBtn);
	if instance_exists(obj_quitBtn)
		instance_destroy(obj_quitBtn);
	draw_set_color(c_white);
}