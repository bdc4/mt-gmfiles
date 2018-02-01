
var parts = int64(ITEMS[? "parts"]);
var pBoxes = int64(parts/25);

for (var i=0; i<pBoxes; i++)	{
	draw_sprite(spr_partsBox,0,room_width*2/4+sprite_get_width(spr_partsBox)+48, room_height*3/5-i*sprite_get_height(spr_partsBox)+64)
}

var msg = "We currently have "+string(parts)+" Parts.";

if mouse_x > room_width*2/4 && mouse_x < room_width*3/4
&& mouse_y < room_height*3/4  
&& mouse_check_button_pressed(mb_left) {
		
	if instance_exists(obj_textbox) {
		if obj_textbox.msg != _portrait+msg {
			update_textbox(_portrait+msg);
		}
	} else {
		update_textbox(_portrait+msg);
	}
		
}