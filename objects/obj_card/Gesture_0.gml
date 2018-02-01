/// @description Insert description here
// You can write your code in this editor

with obj_card {
	
	selected = false;	
}

selected = true;

if room == room_interior {
	var _portrait = sprite_get_name(spr);
	_portrait = "[img:"+string(image_index)+"][char:"+_portrait+"]";
	var msg = [];
	msg[0] = "Hello Captain, what brings you to the "+obj_ship_controller.name+"?";
	msg[1] = "*sigh*... Are we there yet?";
	msg[2] = "Let me know if you need anything, Captain.";
	update_textbox(_portrait+msg[t]);
	if t == 2 {t=0} else {t++}
}