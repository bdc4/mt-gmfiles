var w = room_width;
var h = room_height;




if argument0 {
	btn_1 = instance_create_depth(.15*w+25,.75*h-50,depth, ui_button_ani);
	with btn_1 {
		uiBackColor = c_maroon;
		uiBackColor2 = c_maroon;
		depth = -1100;
		uiTextValue = "None";
		uiControlName = "none";
		uiEventObject = other.id;
	}
}

if argument1 {
	btn_2 = instance_create_depth(.85*w-225,.75*h-50,depth, ui_button_ani);
	with btn_2 {
		uiBackColor = c_blue;
		uiBackColor2 = c_blue;
		depth = -1100;
		uiTextValue = "None";
		uiControlName = "none";
		uiEventObject = other.id;
	}
}

if argument2 {
	btn_3 = instance_create_depth(.5*w-100,.75*h-50,depth, ui_button_ani);
	with btn_3 {
		uiBackColor = c_fuchsia;
		uiBackColor2 = c_fuchsia;
		depth = -1100;
		uiTextValue = "None";
		uiControlName = "none";
		uiEventObject = other.id;
	}
}