//@description - Draw medkit sprites in room

var medkits = int64(ITEMS[? "medkits"]);
var mLockers = int64(medkits/100);
var mCrates = int64((medkits%100)/20);
var mBoxes = int64((medkits%100)%10);

for (var i=0; i<mLockers; i++)	{
	draw_sprite(spr_medLocker,0,room_width-sprite_get_width(spr_medBox)-48, room_height*3/5-i*sprite_get_height(spr_medLocker)+64)
}

for (var i=0; i<mCrates; i++)	{
	draw_sprite(spr_medCrate,0,room_width-sprite_get_width(spr_medBox)*2-48, room_height*3/5-i*sprite_get_height(spr_medCrate)+64);
	if int64((medkits%100)/10)%2 != 0 {
		draw_sprite(spr_medBox,0,room_width-sprite_get_width(spr_medBox)*2-48, room_height*3/5-(i+1)*sprite_get_height(spr_medCrate)+64);
	}
}

for (var i=0; i<mBoxes; i++)	{
	draw_sprite(spr_medBox,0,room_width-sprite_get_width(spr_medBox)*3-48, room_height*3/5-i*sprite_get_height(spr_medBox)+64)
}

var msg = "We currently have "+string(ITEMS[? "medkits"])+" Medkits.";

if mouse_x > room_width*3/4 && mouse_x < room_width
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