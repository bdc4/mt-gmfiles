/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_white);
//draw_set_halign(fa_center);
message = "You can't checkout with a negative balance!";
draw_text_color(x,y-sprite_height, message, c_white,c_white,c_white,c_white, messageAlpha);

//Fade Message
if messageAlpha > 0 {
	messageAlpha -= .05;
}