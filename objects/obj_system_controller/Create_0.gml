/// @description Insert description here
// You can write your code in this editor
//Handle Textbox
	
var msg = "This is the "+string(obj_ship_controller.name)+" area."
update_textbox(msg);

var n = 0;
	
_sCrew = instance_create_depth(64+room_width*1/8+n*1.5*sprite_get_width(spr_portraitNone),room_height/2+12,depth-200,
obj_card);
			
with _sCrew {
			
	var _c = search_map_for_matching(CREW,"assigned",obj_ship_controller.name);
			
	spr = _c[? "portrait"];
	name = _c[? "name"];
	ID = "intCard";
	image_index = _c[? "img_index"];
	image_speed = 0;
	
	n++;
}