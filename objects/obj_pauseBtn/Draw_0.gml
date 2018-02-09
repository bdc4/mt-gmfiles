/// @description Insert description here
// You can write your code in this editor
event_inherited();
if PAUSED {
	uiTextValue = "Resume";
	uiTextColor = $05DF37;
	uiBackColor = c_blue;
	uiBackColor2 = c_blue;
} else {
	uiTextValue = "Pause";
	uiTextColor = c_white;
	uiBackColor = c_maroon;
	uiBackColor2 = c_maroon; 
}

if instance_exists(obj_ship_controller) {
	if obj_ship_controller.attn {
		uiTextValue = "Go to Helm";
		uiTextColor = c_white;
		uiBackColor = c_green;
		uiBackColor2 = c_green;
		uiControlName = "gotohelm";
	} else {
		uiControlName = "pausetoggle";	
	}
}