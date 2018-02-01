/// @description Insert description here
// You can write your code in this editor
draw_self();
sprite_index = spr;
draw_set_color(c_white);

if instance_exists(obj_shipyard_controller) && ID != "CREWCard" {
	draw_set_halign(fa_center);
	draw_text(x,y+96,"$"+string(price));
	draw_text(x,y+128,name);
}

if instance_exists(obj_cantina_controller) && ID != "CREWCard" {
	sprite_set_offset(spr, sprite_width/2, sprite_height/2);
	draw_set_halign(fa_center);
	draw_text(x,y+32*3,name);
	image_speed = 0;
	
	if selected {
		draw_set_font(f_small);
		//draw_text(x,y+32*4,sex);
		draw_text(x,y+32*4,birthplace);
		draw_text(x,y+32*4.75,affiliation);
		draw_text(x,y+32*5.5,special);
		draw_text(x,y+32*6.25,perk);
		draw_text(x,y+32*7.0,fault);
		draw_set_font(f_normal);
		draw_text_color(x,y-sprite_height,addStr,c_white,c_white,c_white,c_white,t);	
	}
}

if instance_exists(obj_rq_controller) && ID != "CREWCard" {
	draw_set_halign(fa_center);
	draw_text(x,y+sprite_height,
	"This package includes: "+"\nShip: "+_SHIP
	+"\nRations: "+string(ITEMSNum[0])
	+"\nMedkits: "+string(ITEMSNum[1])
	+"\nParts: "+string(ITEMSNum[2])
	+"\nClothing: "+string(ITEMSNum[3])
	+"\nTotal: $"+string(price)
	);
}


if (C.showMenu && ID == "CREWCard" && !instance_exists(obj_cantina_controller)) || room == room_launchpad {
	draw_set_halign(fa_center);
	draw_set_font(f_small);
	draw_text(x,y+32*2,string(name));
	draw_text(x,y+32*2.75,"Health: "+string(hp)+"%");
	draw_text(x,y+32*3.5,"Morale: "+string(morale)+"%");
	draw_text(x,y+32*4.25,"Assigned to:\n"+string(assigned));
	draw_set_font(f_normal);
	image_speed = 0;
	
	if selected {
		draw_set_font(f_small);
		draw_set_halign(fa_left);
		draw_text(x+sprite_width/2+12,y-sprite_height/2-4,"Assign to:\n(M)edbay\n(E)ngines\n(C)omms\n(S)ystems");
		draw_set_font(f_normal);
	}
}


if selected {
	draw_rectangle(x+sprite_width/2+3,y+sprite_height/2+3,x-sprite_width/2-4,y-sprite_height/2-4,true);
}