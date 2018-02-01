/// @description Insert description here
// You can write your code in this editor
//if !variable_instance_exists(id, "ngBtn") {
if !instance_exists(ngBtn) {
	ngBtn = instance_create_depth(
		room_width/8,
		0,
		depth-10,
		ui_button_ani);
}
with ngBtn {
	uiFont = f_menu;
	uiTextColor = $05DF37;
	uiTextValue = "Main Menu";
	uiSetWidth = 200;
	uiDrawBackColor = false;
	uiBackColor = c_black;
	uiEventObject = obj_gameMenu;
	uiControlName = "mainmenu";
	//uiMoveX = room_width/8;
	//uiAniMove = true;
	uiHoverColor = c_white;
	uiHoverMode = 1;
	uiHoverInfo = 1;
}