/// @description Insert description here
// You can write your code in this editor
if debug_mode {
	draw_set_alpha(1);
	draw_text(32,32,"T = "+string(t));
	draw_text(32, 64,"Y = "+string(camera_get_view_y(camera)));
}