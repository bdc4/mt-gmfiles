/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_tab) or mouse_check_button_pressed(mb_right)) 
and room != room_menu and room != room_launchpad and !instance_exists(obj_eventDisplay) {
	showMenu = !showMenu;
}
	
if showMenu and room != room_launchpad {
	if !instance_exists(obj_mainMenuBtn) instance_create_depth(room_width-400,room_height-300,-1000000000,obj_mainMenuBtn);
	if !instance_exists(obj_saveGameBtn) instance_create_depth(room_width-400,room_height-250,-1000000000,obj_saveGameBtn);
	//if !instance_exists(obj_pauseBtn) var pb = instance_create_depth(room_width-400,room_height-200,-1000000000,obj_pauseBtn);

}

if (!showMenu or room == room_launchpad) {
	if instance_exists(obj_mainMenuBtn)	instance_destroy(obj_mainMenuBtn);
	if instance_exists(obj_saveGameBtn)	instance_destroy(obj_saveGameBtn);
	//if instance_exists(obj_pauseBtn) and variable_instance_exists(id,"pb")	instance_destroy(pb);
}

if keyboard_check_pressed(vk_f9) {
	room_restart();
}

if keyboard_check_pressed(vk_f10) {
	game_restart();	
}

if keyboard_check_pressed(vk_f7) {
	screen_save("Screenshot_"+string(current_day)+string(current_hour)+string(current_minute)+string(current_second)+".png");
}