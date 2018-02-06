/// @description Insert description here
// You can write your code in this editor

if room == room_interior {
	//Draw Background
	draw_sprite(bg,0,0,0);
	
	if !instance_exists(obj_system_controller)
		instance_create_depth(0,0,depth-100,obj_system_controller);
}

//Draw Timer
var timeStr = int64(t/60*2);
var lZero = "0";
var fTime = timeStr;
	
if timeStr >= 13 {
	fTime -= 12
}
	
if timeStr == 0 {
	fTime = 12;	
}

if timeStr >= 12 and timeStr != 0 {
	var AMPM = "PM";
} else {
	var AMPM = "AM";
}
	
if fTime < 10
	fString = lZero+string(fTime)+":00 "+AMPM;
else
	fString = string(fTime)+":00 "+AMPM;

//draw_set_color(c_black);
//draw_rectangle(95,230,195,200,false);
	
//draw_set_color(c_lime);
//draw_rectangle(95,230,195,200,true);
//draw_text(100,202,fString);