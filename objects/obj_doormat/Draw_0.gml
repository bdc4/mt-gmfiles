/// @description Insert description here
// You can write your code in this editor
draw_self();

if sprite_index != Doormat[? "sprite"] {
	sprite_index = Doormat[? "sprite"];
}

image_xscale = 1.5;
image_yscale = image_xscale;

name = Doormat[? "name"];
draw_set_halign(fa_center);
draw_set_font(f_small);
draw_text(x,y,string(name));
draw_set_font(f_normal);