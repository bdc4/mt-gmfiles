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

instance_destroy(attackBtn);
instance_destroy(talkBtn);
instance_destroy();