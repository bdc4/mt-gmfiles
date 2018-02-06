/// @description Insert description here
// You can write your code in this editor
img = spr_empty;
depth = -1000;

var w = room_width;
var h = room_height;

attackBtn = instance_create_depth(.15*w+50,.75*h-50,depth, ui_button_ani);
talkBtn = instance_create_depth(.85*w-250,.75*h-50,depth, ui_button_ani);

with attackBtn {
	uiBackColor = c_maroon;
	uiBackColor2 = c_maroon;
	depth = -1100;
	uiTextValue = "Attack!";
	uiControlName = "attack";
	uiEventObject = other.id;
}

with talkBtn {
	uiBackColor = c_blue;
	uiBackColor2 = c_blue;
	depth = -1100;
	uiTextValue = "Negotiate";
	uiControlName = "talk";
	uiEventObject = other.id;
}