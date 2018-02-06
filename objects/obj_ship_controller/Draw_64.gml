/// @description Insert description here
// You can write your code in this editor
var pString = "";
if attn {pString = "[$="+string(c_orange)+"]"+" ALERT!";} else if PAUSED {pString = " PAUSED";} else {pString = fString};
var dayStr = "Day: "+string(META[? "day"])+"     "+pString;

draw_set_color(c_black);
draw_rectangle(0,0,12+10*20,24+font_get_size(f_normal),false);
draw_set_font(f_normal);
draw_set_halign(fa_left);
draw_set_color(c_lime);
draw_rectangle(0,0,12+10*20,24+font_get_size(f_normal),true);
draw_text_custom(12,6,dayStr,1);