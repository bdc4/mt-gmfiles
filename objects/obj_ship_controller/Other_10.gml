/// @description Insert description here
// You can write your code in this editor

if other.uiControlName == "pausetoggle" {
	PAUSED = !PAUSED;
}

if other.uiControlName == "gotohelm" {
	if room != room_cockpit room_goto(room_cockpit);
	if C.showMenu C.showMenu = false;	
}

if other.uiControlName == "onscreen" {
	if instance_exists(obj_textbox)
		instance_destroy(obj_textbox);
	
	switch(eve) {
		case "Pirates": 
			u_eve_pirates(); 
			break;
		case "Abandoned Ship":
			u_eve_abandoned_ship();
			break;
		default:
			title = "Oops! ";
			msg = "Something went wrong!";
			attn = false;
			
	}
	
	update_textbox(title+msg);
	PAUSED = true;
	eve = false;
	img = spr_empty;
}