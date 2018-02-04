/// @description Insert description here
// You can write your code in this editor
if debug_mode {
	draw_set_alpha(1);
	draw_text(32,32,"T = "+string(t));
	draw_text(32, 64,"aFade = "+string(aFade));
}

draw_set_font(f_menu);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_alpha(aFade);
draw_set_color($05DF37);
draw_text(room_width/2, 400, "Marco Polo Studios\nPresents...");
draw_set_halign(fa_left);