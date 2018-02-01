/// @description Insert description here
// You can write your code in this editor
if room == room_prelude {
draw_sprite_general(spr_stars,irandom_range(0,7), 0, 0, sprite_get_width(spr_stars), sprite_get_height(spr_stars), 
0, -room_height*2/3, 6, 3, 0, c_white, c_white, c_black, c_black, 1);
}

draw_set_alpha(fadeAlpha);
draw_set_color(c_white);
draw_rectangle(0,-room_height,room_width,room_height,false);
if fadeWhite {
	fadeAlpha += .02*multiplier;
}
clamp(fadeAlpha,0,1);

if fadeAlpha == 1 {
	room_goto_next();
	multiplier = -2;
}

if room == room_menu and fadeAlpha == 0 {
	instance_destroy();	
}