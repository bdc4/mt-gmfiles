/// @description Insert description here
// You can write your code in this editor

if other.uiControlName == "pausetoggle" {
	PAUSED = !PAUSED;
}

if other.uiControlName == "onscreen" {
	if instance_exists(obj_textbox)
		instance_destroy(obj_textbox);
	
	u_eve_pirates();
	
	update_textbox(title+msg);
	var ed = instance_create_depth(0,0,depth,obj_interactDisplay);
	ed.img = img;
	PAUSED = true;
}