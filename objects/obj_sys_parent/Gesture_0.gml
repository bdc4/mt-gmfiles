/// @description Insert description here
// You can write your code in this editor
if C.showMenu exit;

obj_ship_controller.bg = _system[? "bg"];
obj_ship_controller.name = _system[? "name"];

if instance_exists(obj_textbox)
	instance_destroy(obj_textbox);

//Populate room info
if room_exists(room_interior)
	room_goto(room_interior);