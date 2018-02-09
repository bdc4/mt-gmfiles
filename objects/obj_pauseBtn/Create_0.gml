/// @description Insert description here
// You can write your code in this editor
event_inherited();

uiFont = f_menu;

if PAUSED
	uiTextValue = "Resume";
else
	uiTextValue = "Pause";
	
uiDrawBackColor = true;
uiEventObject = obj_ship_controller;
uiControlName = "pausetoggle";
uiSetWidth = 200;

depth = -10000000;