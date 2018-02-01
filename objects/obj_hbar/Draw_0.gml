/// @description Insert description here

//draw sprite
draw_self();
with a {color = draw_get_color()};
//and values
draw_set_color(a.color);
draw_set_font(f_normal);

if hover or a.grab
	draw_rectangle(leftLimit-32,y-sprite_height*2.5,rightLimit+32,y+sprite_height*1.5,true);

//draw_set_valign(fa_center);

//draw_set_halign(fa_center);
draw_text((rightLimit+leftLimit)/2,y-sprite_get_height(spr_hbar)/1.5,string(a.label));

var num = int64(a.itemNum)+int64(a.percentage);

//draw_set_halign(fa_left);
draw_text_custom(rightLimit+48,y,
	
	"[$="+string(c_red)+"]"+"$"+string(a.multiplier)
	+ " X "
	+ "[$="+string(c_white)+"]"+string(a.percentage)
	+ " = " + "[$="+string(c_lime)+"]"+ string(num),
	
	1);