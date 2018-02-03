/// @description Insert description here
// You can write your code in this editor

//Draw launch clearance text
draw_set_halign(fa_center);
draw_set_font(f_normal);
if clear {
	clearText = "[$="+string(c_lime)+"]"+"You have all required ITEMS and CREW."+"[$="+string(c_white)+"]"+"##You are clear for launch!";	
} else {
	clearText =  "[$="+string(c_red)+"]"+"You are missing required ITEMS or CREW."
	+"##"
	+"[$="+string(c_white)+"]"
	+"You are not clear for launch for the following:\n"
	+failStr;
}

draw_text_custom(room_width*12/18,room_height/2-48, clearText, 1);

if clear {
	if !instance_exists(obj_launchBtn)
		instance_create_depth(room_width*12/18,room_height*2.5/4,depth,obj_launchBtn);	
}




