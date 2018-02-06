/// @description Insert description here
// You can write your code in this editor

if other.uiControlName == "pause" {
	PAUSED = true;
}

if other.uiControlName == "continue" {
	PAUSED = false;
}

if instance_exists(obj_textbox) instance_destroy(obj_textbox);
if instance_exists(obj_eventPauseBtn) instance_destroy(obj_eventPauseBtn);
if instance_exists(obj_eventContBtn) instance_destroy(obj_eventContBtn);
instance_destroy();