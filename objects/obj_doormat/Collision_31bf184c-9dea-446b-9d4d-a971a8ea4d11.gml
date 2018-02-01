/// @description Insert description here
// You can write your code in this editor

var targetRoom = Doormat[? "room"];

other.x = x;
other.y = y + sprite_height*1.5;

META[? "TD_posX"] = other.x
META[? "TD_posY"] = other.y;

if room_exists(targetRoom) {
	room_goto(targetRoom);	
}