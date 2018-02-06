/// @description Insert description here
// You can write your code in this editor
var w = room_width;
var h = room_height;
draw_set_color(c_black);
draw_rectangle(.15*w,.15*h,.85*w,.75*h,false);
draw_set_color(c_white);
draw_rectangle(.15*w,.15*h,.85*w,.75*h,true);
draw_sprite(img,0,.5*w,.5*h-50);

if !instance_exists(obj_eventPauseBtn) {
	instance_create_depth(.15*w+50,.75*h-50,depth,obj_eventPauseBtn);
}


if !instance_exists(obj_eventContBtn) {
	instance_create_depth(.85*w-250,.75*h-50,depth,obj_eventContBtn);
}

if !instance_exists(obj_textbox) instance_destroy();