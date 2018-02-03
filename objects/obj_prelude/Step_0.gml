/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(camera);
var yy = camera_get_view_y(camera);

if yy < 0 {
	
	//Camera Easing
	if yy < -400 {t = 1}
	else if yy < -80 {t += .08}
	if yy > -80 {t -= .085*t;}
	yy += t;
	camera_set_view_pos(camera,xx,yy);
	
} else {
	
	//Transition
	camera_set_view_pos(camera,xx,0);
	fadeWhite = true;
}

if keyboard_check_pressed(vk_anykey) || mouse_check_button(mb_any)
	fadeWhite = true;