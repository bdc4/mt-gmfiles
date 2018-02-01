/// @description Insert description here
// You can write your code in this editor
ITEMS[? "money"] = moneyStart;
if room == room_interior or room == room_cockpit or room == room_cargo {
	room_goto(room_ship);
	exit;
}

if room_exists(room_mother_lobby) {
	room_goto(room_mother_lobby);
}