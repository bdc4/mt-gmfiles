/// @description Insert description here
// You can write your code in this editor
C.showMenu = false;

var w = room_width;
var h = room_height;
draw_set_color(c_black);
draw_rectangle(.15*w,.15*h,.85*w,.75*h,false);
draw_set_color(c_white);
draw_rectangle(.15*w,.15*h,.85*w,.75*h,true);
draw_sprite(img,0,.5*w,.5*h-50);