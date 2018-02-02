/// @description Insert description here
// You can write your code in this editor
_maxSpeed = 16;
_speed = 0;
_posX = META[? "TD_posX"];
_posY = META[? "TD_posY"];

if _posX != "None" && _posY != "None" {
	x = int64(_posX); 
	y = int64(_posY);	
} else {
	x = xstart;
	y = ystart;
}