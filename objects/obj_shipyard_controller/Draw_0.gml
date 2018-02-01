/// @description Insert description here
// You can write your code in this editor
//draw_set_halign(fa_left);

draw_text(room_width*3/4,32,"Money: "+string(ITEMS[? "money"]));

if SHIPOwned {
	
	if !instance_exists(obj_sellBtn) && SHIP[? "name"] != "None"
		instance_create_depth(room_width/2,room_height/2-sprite_get_height(spr_sellBtn)-32,depth,obj_sellBtn);
	
	draw_set_halign(fa_center);
	draw_text(room_width/2,room_height/2,"You already have a "+string(SHIP[? "name"])+"!")	
}