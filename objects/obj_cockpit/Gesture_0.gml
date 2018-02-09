/// @description Insert description here
// You can write your code in this editor
obj_ship_controller.name = "Cockpit";

if instance_exists(obj_textbox)
	instance_destroy(obj_textbox);

room_goto(room_cockpit);