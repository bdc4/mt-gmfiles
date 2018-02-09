/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_textbox) instance_destroy(obj_textbox);

if other.uiControlName == "attack" {
	with obj_ship_controller {
		PAUSED = true;
		title = "Attack! : ";
		msg = "You attacked the pirates! Hooray!";
		attn = false;
		update_textbox(title+msg);
	}
}

if other.uiControlName == "talk" {
	with obj_ship_controller {
		PAUSED = true;
		title = "Talk?! : ";
		msg = "You talked to the pirates? Hooray?";
		attn = false;
		update_textbox(title+msg);
	}
}

if other.uiControlName == "explore" {
	with obj_ship_controller {
		
		u_eve_events(2);
		
		if instance_exists(obj_textbox)
			instance_destroy(obj_textbox);
		
		update_textbox(title+msg);
		var ed = instance_create_depth(0,0,depth,obj_eventDisplay);
		ed.img = img;
		PAUSED = true;
		attn = false;
	}
}

if other.uiControlName == "ignore" {
	with obj_ship_controller {
		update_textbox("You chose to ignore it and continue on...");
		var ed = instance_create_depth(0,0,depth,obj_eventDisplay);
		ed.img = img;
		PAUSED = true;
		attn = false;
	}
}

with ui_button_ani {if object_index != obj_attnBtn instance_destroy();}
instance_destroy();