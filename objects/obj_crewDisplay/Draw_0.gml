/// @description Insert description here
// You can write your code in this editor
//Draw Crew Members
draw_set_color(c_black);
if room != room_launchpad {draw_rectangle(16,4,room_width-16,room_height-16,false)};
draw_set_color(c_white);
draw_rectangle(16,4,room_width-16,room_height-16,true);
var title = "";

if !PAUSED title="CREW";
else title = "PAUSED";

draw_set_valign(fa_top);
draw_text(room_width/2, 4, title);
draw_set_color(c_black);
draw_rectangle(32,32,room_width-32,room_height*3/8+8,false);
draw_set_color(c_white);
draw_rectangle(32,32,room_width-32,room_height*3/8+8,true);

draw_set_font(f_normal);
draw_set_halign(fa_center);
draw_set_color(c_white);

//Draw Ship
var spr = SHIP[? "spr"];
draw_sprite(spr,0,room_width/8,room_height/2);

draw_rectangle(
	room_width*1/8-sprite_get_width(spr)*1.25+32,
	room_height/2-sprite_get_height(spr)+32,
	room_width*1/8+sprite_get_width(spr)*1.25-32,
	room_height/2+sprite_get_height(spr)+32,
	true
);

draw_text(room_width/8, room_height/2+sprite_get_height(spr)*.75, "SHIP: "+string(SHIP[? "name"]));


//Draw ITEMS
draw_set_halign(fa_left);
itemStr = "";
for (var i = 0; i < array_length_1d(ITEMNAMES); ++i) {
		
	itemStr += ITEMNAMES[i]+": "+string(ITEMS[? ITEMNAMES[i]])+"\n";
}

draw_rectangle(
	room_width*1/8+128-12,
	room_height/2-sprite_get_height(spr)+32,
	room_width*1/8+286,
	room_height/2+sprite_get_height(spr)+32,
	true
);

draw_text(room_width*1.1/8+128,room_height/2-sprite_get_height(spr)/2,"ITEMS:\n"+itemStr);