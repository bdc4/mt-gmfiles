/// @description Insert description here
// You can write your code in this editor

if C.showMenu exit;

obj_ship_controller.name = "Cargo Bay";

if instance_exists(obj_textbox)
	instance_destroy(obj_textbox);
	
room_goto(room_cargo);