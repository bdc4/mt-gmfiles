/// @description Draw code
event_inherited();
// Debug
if debug {
	draw_text(x,y,"Target Room: " + string(targetRoom));
}

if !file_exists("savedata.ini") {
	instance_destroy();	
}