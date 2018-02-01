/// @description Insert description here
// You can write your code in this editor
if true {
	
	var day = int64(META[? "day"]);
	day += 1;
	META[? "day"] = day;
	
	var num = irandom_range(1,18);
	
	title = "Uneventful Day: ";
	msg = "Nothing to report today.";

	if num >= 8 {
		var eveNum = irandom_range(1,6);
		u_eve_events(eveNum);	
	}
	
	if instance_exists(obj_textbox)
		instance_destroy(obj_textbox)
		
	update_textbox(title+msg);
	
}