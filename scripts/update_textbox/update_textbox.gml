var msg = argument0;

if instance_exists(obj_textbox) {
	if obj_textbox.msg != msg 
		instance_destroy(obj_textbox)
}

tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
tb.msg = msg;	
	
with obj_textbox {
	ctb_add_text(msg);
}