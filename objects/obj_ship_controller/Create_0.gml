/// @description Insert description here
// You can write your code in this editor
marsDist = 54.6*1000000;
bg = spr_empty;
name = "None";
t = 0;
dayLength = 60*12;
factor = .5;
pause = false;
fString = "00:00 AM";
img = spr_empty;
attn = int64(META[? "attn"]);
eve = META[? "eve"];

show_debug_message("Attn Start Value = "+string(attn));
show_debug_message("Eve Start Value = "+string(eve));

if is_undefined(attn) or is_undefined(eve) {
	attn = false; eve = "";	
}

if attn {
	if instance_exists(obj_textbox)
		instance_destroy(obj_textbox);
			
	update_textbox("[c:lime]Alert[c:white]: Your attention is needed at the helm.");
}

show_debug_message("Attn Final Value = "+string(attn));
show_debug_message("Eve Final Value = "+string(eve));
//if attn == undefined {attn = false;}
attnEvent = 0;