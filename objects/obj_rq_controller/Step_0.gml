/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_textbox) {
	tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
	with tb {str = "";}
	}

for (var i=0; i<array_length_1d(pkg); i++) {
	
	//Calculate cost
	cost = 0;
	//cost += pkg[i].cost;
	
	//Set flavor text
	with pkg[i] {
		draw_set_halign(fa_center);
		if (hover) {
			
			if !instance_exists(obj_textbox) {
				obj_rq_controller.tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
				with tb {
					str = "";
					ctb_add_text("[char:"+sprite_get_name(spr_portraitNone)+"]");
				}
			}
			
			with obj_rq_controller.tb {
				if str != string(FLAVORTEXT[? string_lower(obj_rq_controller.pkgNames[i])+"_pkg"]) {
					
					var newTb = instance_create_depth(32,room_height-128,depth,obj_textbox);
					with newTb {
						str = string(FLAVORTEXT[? string_lower(obj_rq_controller.pkgNames[i])+"_pkg"]);
						ctb_add_text("[char:"+sprite_get_name(spr_portraitNone)+"]"+str);
					}
					
					instance_destroy();
					obj_rq_controller.tb = newTb;
				}
			}
		} 
	}
}