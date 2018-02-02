/// @description Insert description here
// You can write your code in this editor
event_inherited();

uiFont = f_menu;
uiTextColor = $05DF37;

if PAUSED
	uiTextValue = "Resume";
else
	uiTextValue = "Pause";
	
uiDrawBackColor = false;
uiBackColor = c_black;
uiEventObject = obj_ship_controller;
uiControlName = "pausetoggle";
uiAniMove = true;
uiHoverColor = c_white;