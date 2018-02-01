/// @description Insert description here
// You can write your code in this editor
if position_meeting(mouse_x,mouse_y,id) {
	hover = true;	
} else {
	hover = false;	
}
var controller = undefined;
if instance_exists(obj_shipyard_controller)
	controller = obj_shipyard_controller
	
else if instance_exists(obj_rq_controller) {
	controller = obj_rq_controller
	if SHIP[? "name"] == _SHIP
		instance_destroy();
}
	
if selected && controller != undefined {
	ITEMS[? "money"] = string(int64(controller.moneyStart) - price); 
}

if selected and ID == "CREWCard" {
	
	if keyboard_check_pressed(ord("M")) {
		switch_crew_stations("Medbay");
	}
	
	if keyboard_check_pressed(ord("E")) {
		switch_crew_stations("Engines");
	}
	
	if keyboard_check_pressed(ord("C")) {
		switch_crew_stations("Communications");
	}
	
	if keyboard_check_pressed(ord("S")) {
		switch_crew_stations("Systems");
	}
		
}

