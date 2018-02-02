/// Get Vars
// Load data from DS Map

// Retrive relevant data for our previously-saved game
if instance_exists(C)
	_checkSum = C.checkSum;
else
	_checkSum = "C NOT FOUND";

drawLoadButton = false; // Default to not enabling loading
drawNewGame = true;
drawQuitButton = true;

depth = -1000;
height = room_height+240;
width = room_width;

globalvar PAUSED;

PAUSED = true;