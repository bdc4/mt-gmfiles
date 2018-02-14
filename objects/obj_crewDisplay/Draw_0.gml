/// @description Insert description here
// You can write your code in this editor
//Draw Crew Members
var title = "";

if !PAUSED title="CREW";
else title = "PAUSED";

if !PAUSED
	draw_set_alpha(.75);
else
	draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(32,32,room_width-32,room_height-32,false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(32,32,room_width-32,room_height-32,true);

draw_set_font(f_normal);
draw_set_halign(fa_center);
draw_set_color(c_white);

//Draw Ship
var spr = SHIP[? "spr"];
draw_sprite(spr,0,room_width/8,room_height/1.5);

draw_rectangle(
	room_width*1/8-sprite_get_width(spr)*1.25+32,
	room_height/1.5-sprite_get_height(spr)+32,
	room_width*1/8+sprite_get_width(spr)*1.25-32,
	room_height/1.5+sprite_get_height(spr)+32,
	true
);

draw_text(room_width/8, room_height/1.5+sprite_get_height(spr)*.75, "SHIP: "+string(SHIP[? "name"]));


//Draw ITEMS

itemStr = "";
for (var i = 0; i < array_length_1d(ITEMNAMES); ++i) {
		
	itemStr += ITEMNAMES[i]+": "+string(ITEMS[? ITEMNAMES[i]])+"\n";
}

draw_rectangle(
	room_width*1/8+128-12,
	room_height/1.5-sprite_get_height(spr)+32,
	room_width*1/8+286,
	room_height/1.5+sprite_get_height(spr)+32,
	true
);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(room_width*1/8+128,room_height/1.5-sprite_get_height(spr)/2,"ITEMS:\n"+itemStr);
//draw_set_valign(fa_top);

//Title
draw_set_halign(fa_center);
draw_text(room_width/2-12, 96, title);
draw_rectangle(room_width/2-12-100, 96,room_width/2-12+100, 96+24, true);
draw_set_halign(fa_left);

draw_set_color(c_black);
draw_rectangle(room_width*2.25/4+18,room_height*2/3-sprite_get_height(spr)+32,room_width*3.25/4+18,room_height/1.5+sprite_get_height(spr)+32,false);
draw_set_color(c_white);
draw_rectangle(room_width*2.25/4+18,room_height*2/3-sprite_get_height(spr)+32,room_width*3.25/4+18,room_height/1.5+sprite_get_height(spr)+32,true);