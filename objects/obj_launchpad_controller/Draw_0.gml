/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_normal);
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_rectangle(16,4,room_width-16,room_height-16,true);

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
draw_set_halign(fa_left)
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

//Draw launch clearance text
draw_set_halign(fa_center);
if clear {
	clearText = "[$="+string(c_lime)+"]"+"You have all required ITEMS and CREW."+"[$="+string(c_white)+"]"+"##You are clear for launch!";	
} else {
	clearText =  "[$="+string(c_red)+"]"+"You are missing required ITEMS or CREW."
	+"##"
	+"[$="+string(c_white)+"]"
	+"You are not clear for launch for the following:\n"
	+failStr;
}

draw_text_custom(room_width*12/18,room_height/2-sprite_get_height(spr)/2, clearText, 1);





