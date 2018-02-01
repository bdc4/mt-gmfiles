/// @description Insert description here
// You can write your code in this editor

//Camera follow

view_camera[0] = camera_create();

//Keyboard Movement

var keyVal = [vk_up, vk_down, vk_left, vk_right];

for (var i=0; i<array_length_1d(keyVal); i++) {

	if keyboard_check(keyVal[i]) {
		
		/* Vertical */
		
		{
			//Up
			if i == 0 && (y-_maxSpeed-sprite_height/2 > 0)
				y -= _maxSpeed;
			
			//Down
			if i == 1 && (y+_maxSpeed+sprite_height/2 < room_height)
				y += _maxSpeed;
		}
		
		/* Horizontal */
		
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