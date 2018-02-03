/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_player_TD) exit;

if distance_to_object(obj_player_TD) <= 12 and place_meeting(x,y,obj_empty) {
	var targetRoom = Doormat[? "room"];

	other.x = x;
	other.y = y + sprite_height*1.5;

	META[? "TD_posX"] = other.x
	META[? "TD_posY"] = other.y;

	if room_exists(targetRoom) {
		room_goto(targetRoom);	
	}
}