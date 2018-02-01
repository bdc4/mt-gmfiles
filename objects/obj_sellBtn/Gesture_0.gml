/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_store_controller) {
	msgStore = show_question_async("Return all your ITEMS and start over?");
}

if instance_exists(obj_shipyard_controller) {
	msgShipyard = show_question_async("Return SHIP for full refund?");
}