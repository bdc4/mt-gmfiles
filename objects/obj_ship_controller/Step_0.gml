/// @description Insert description here
// You can write your code in this editor
if room = room_menu PAUSED = true;
if !PAUSED {t += 1*factor};
if t >= 60*12 {
	
	var day = int64(META[? "day"]);
	day += 1;
	META[? "day"] = day;
	
	var num = irandom_range(1,18);
	
	title = "";
	msg = "Nothing to report today.";
	
	//Debugging below
	//num = 15
	
	if num >= 8 and num <= 10 {
		var eveNum = irandom_range(1,6);
		u_eve_events(eveNum);	
	}
	
	if num >= 14 and num <= 18 {
		var eveNum = irandom_range(1,6);
		u_eve_minor_injury(eveNum);
	}
	
	if title != "" {
		if instance_exists(obj_textbox)
			instance_destroy(obj_textbox)
		
		update_textbox(title+msg);
	}
	t=0;
}