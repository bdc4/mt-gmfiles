/// @description Insert description here
// You can write your code in this editor
//Draw Crew Members
draw_set_color(c_white);
draw_text(room_width/2, 4, "CREW");
draw_set_color(c_black);
draw_rectangle(32,32,room_width-32,room_height*3/8+8,false);
draw_set_color(c_white);
draw_rectangle(32,32,room_width-32,room_height*3/8+8,true);