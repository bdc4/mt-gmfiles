/// @description Insert description here
// You can write your code in this editor
event_inherited();
if PAUSED {
	uiTextValue = "Resume";
	uiBackColor = c_blue;
	uiBackColor2 = c_blue;
} else {
	uiTextValue = "Pause";
	uiBackColor = c_maroon;
	uiBackColor2 = c_maroon; 
}

if instance_exists(obj_ship_controller) {
	if obj_ship_controller.attn {
		uiTextColor = c_silver;
		uiControlName = "";
	} else {
		uiControlName = "pausetoggle";	
	}
}