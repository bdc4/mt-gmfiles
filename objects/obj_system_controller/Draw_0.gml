/// @description Insert description here
// You can write your code in this editor
_portrait = "spr_portraitNone";
if _sCrew.spr != undefined {
	_portrait = sprite_get_name(_sCrew.spr);
}

_portrait = "[char:"+_portrait+"]"+"[img:"+string(_sCrew.image_index)+"]";

if obj_ship_controller.name == "Medbay" {
	u_populate_medkits();
}

if obj_ship_controller.name == "Cargo Bay" {
	u_populate_medkits();
	u_populate_partboxes();
}
