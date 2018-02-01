/// @description Insert description here
// You can write your code in this editor
var dayStr = "Day: "+string(META[? "day"]);

draw_set_color(c_black);
draw_rectangle(0,0,12+12*string_length(dayStr),24+font_get_size(f_normal),false);
draw_set_font(f_normal);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_rectangle(0,0,12+12*string_length(dayStr),24+font_get_size(f_normal),true);
draw_text(12,6,dayStr);