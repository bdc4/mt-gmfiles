/// @description Insert description here
// You can write your code in this editor

//Camera follow

view_camera[0] = camera_create();

//DISABLED
#region Keyboard Movement
/*
var keyVal = [vk_up, vk_down, vk_left, vk_right];

for (var i=0; i<array_length_1d(keyVal); i++) {

	if keyboard_check(keyVal[i]) {
		
		{
			//Up
			if i == 0 && (y-_maxSpeed-sprite_height/2 > 0)
				y -= _maxSpeed;
			
			//Down
			if i == 1 && (y+_maxSpeed+sprite_height/2 < room_height)
				y += _maxSpeed;
		}
		
		{
			//Left
			if i == 2 && (x-_maxSpeed-sprite_width/2 > 0)
				x -= _maxSpeed;
			
			//Right
			if i == 3 && (x+_maxSpeed+sprite_width/2 < room_width)
				x += _maxSpeed;
		}
	}
}
*/
#endregion

//Mouse Movement
if mouse_check_button_pressed(mb_left) and !C.showMenu {
	
	if instance_exists(obj_empty)
		with (obj_empty) {instance_destroy();}
		
	var target = instance_create_depth(mouse_x,mouse_y,depth,obj_empty);
	path = path_add();
	mp_potential_path(path, obj_empty.x, obj_empty.y, 8, 4, false);
	path_start(path, 8, 0, false);	
	
}

if instance_exists(obj_empty) {
	if point_distance(x,y,obj_empty.x,obj_empty.y) <= 12 {
		with (obj_empty) {instance_destroy()};
		path_end();
	}
}