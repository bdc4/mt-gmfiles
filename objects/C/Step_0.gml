/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_escape) && room != room_menu
	showMenu = !showMenu;

if keyboard_check_pressed(vk_f9) {
	room_restart();
}

if keyboard_check_pressed(vk_f10) {
	game_restart();	
}

if keyboard_check_pressed(vk_f7) {
	screen_save("Screenshot_"+string(current_day)+string(current_hour)+string(current_minute)+string(current_second)+".png");
}