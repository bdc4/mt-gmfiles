/// @description Insert description here
// You can write your code in this editor
event_inherited();

uiFont = f_menu;
uiTextColor = $05DF37;

if PAUSED
	uiTextValue = "Resume";
else
	uiTextValue = "Pause";
	
uiDrawBackColor = true;
uiBackColor = c_black;
uiBackColor2 = false;
uiEventObject = obj_ship_controller;
uiControlName = "pausetoggle";
uiHoverColor = c_white;