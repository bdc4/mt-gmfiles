/// @description Insert description here
// You can write your code in this editor

//draw_set_alpha(META[? "titleAlpha"]);
draw_set_alpha(1);
draw_sprite_general(spr_stars,irandom_range(0,7), 0, 0, sprite_get_width(spr_stars), sprite_get_height(spr_stars), 0, -room_height*2/3, 6, 3, 0, c_white, c_white, c_black, c_black, 1);

if room == room_menu  {
	draw_set_color($05DF37);
	draw_set_halign(fa_center);
	draw_rectangle(room_width/2-120,room_height/4+font_get_size(f_menu)*2,room_width/2+120,room_height/4+32,false);
	draw_text(room_width/2,room_height/4,"The Martian Trail");	
}


//Restart Game
if keyboard_check_pressed(ord("R")) game_restart();