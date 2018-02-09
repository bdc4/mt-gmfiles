/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_white);
draw_set_halign(fa_center);
//if position_meeting(mouse_x, mouse_y, id) {
draw_set_valign(fa_center);
var str = string(_system[? "name"])+"\n"+"Hull Points: "+string(_system[? "hp"]);
draw_text(x,y,str);
draw_set_valign(fa_top);
//}