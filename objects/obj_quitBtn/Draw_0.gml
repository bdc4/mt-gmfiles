/// @description Insert description here
// You can write your code in this editor
draw_self();

//Get working directory and therefore save location
if debug {
	draw_text(x,y-sprite_height-48,"CheckSum = " + string(_checkSum) + " at: "+string(working_directory));
}