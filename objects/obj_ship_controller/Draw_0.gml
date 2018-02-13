/// @description Insert description here
// You can write your code in this editor

if room == room_menu exit;

if room == room_interior {
	//Draw Background
	draw_sprite(bg,0,0,0);
	
	if !instance_exists(obj_system_controller)
		instance_create_depth(0,0,depth-100,obj_system_controller);
}

//Calculate Timer
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


//Draw Timer UI
draw_set_valign(fa_top);
depth = -10000000;
var pString = "";
if attn {pString = "[$="+string(c_orange)+"]"+" ALERT!";} else if PAUSED {pString = "[$="+string(c_gray)+"]"+fString;} else {pString = fString};
var dayStr = "Day: "+string(META[? "day"])+"   "+pString;

draw_set_color(c_black);
draw_rectangle(16,0,48+10*20,78+font_get_size(f_normal),false);
draw_set_font(f_normal);
draw_set_halign(fa_left);
draw_set_color(c_lime);
draw_rectangle(16,0,48+10*20,78+font_get_size(f_normal),true);
draw_text_custom(44,6,dayStr,1);

if !instance_exists(obj_pauseBtn)
	instance_create_depth(32,48,depth-100,obj_pauseBtn);