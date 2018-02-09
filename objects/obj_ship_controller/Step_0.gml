/// @description Insert description here
// You can write your code in this editor
if room == room_menu PAUSED = true;
if !PAUSED and !attn {t += 1*factor};
t = clamp(t,0,dayLength);
if t >= dayLength {
	
	var day = int64(META[? "day"]);
	day += 1;
	META[? "day"] = day;
	
	var num = irandom_range(1,18);
	
	
	img = spr_empty;
	title = "";
	msg = "Nothing to report today.";
	
	//Debugging:
	//Uncomment below line for no uneventful days
	//num = irandom_range(8,18);
	//Uncomment to set precise event
	//num = 9
	
	if num >= 8 and num <= 10 {
		var eveNum = irandom_range(1,5);
		//eveNum = 2; //For debugging
		u_eve_events(eveNum);
	}
	
	if num >= 14 and num <= 18 {
		var eveNum = irandom_range(1,6);
		//eveNum = 2; //For debugging
		u_eve_minor_injury(eveNum);
	}
	
	if title != "" and title != "ATTENTION" {
		if instance_exists(obj_textbox)
			instance_destroy(obj_textbox);
		
		update_textbox(title+msg);
		var ed = instance_create_depth(0,0,depth,obj_eventDisplay);
		ed.img = img;
		PAUSED = true;
	}
	
	if attn {
		if instance_exists(obj_textbox)
			instance_destroy(obj_textbox);
		
		update_textbox("[c:lime]Alert[c:white]: Your attention is needed at the helm.");
	}
	
	
	t=0;
}