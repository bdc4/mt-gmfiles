/// @description Insert description here
// You can write your code in this editor
draw_self();

if obj_ship_controller.attn {
	draw_set_color(c_orange);
	draw_set_font(f_menu);
	draw_text_ext_transformed(x,y-font_get_size(f_menu)*2,"!",0,200,3,3,0);
	draw_set_font(f_normal);
	draw_set_color(c_white);
	exit;
}

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y,"Helm");
draw_set_valign(fa_top);