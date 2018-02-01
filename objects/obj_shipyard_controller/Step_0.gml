/// @description Insert description here

if !instance_exists(obj_textbox) {
	tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
	with tb {str = "";}
	}
	
if SHIP[? "name"] == "None" {

	for (var i=0; i<array_length_1d(Ships); i++) {
	
		//Calculate cost
		cost = 0;
		//cost += Ships[i].cost;
	
		//Set flavor text
		with Ships[i] {
			draw_set_halign(fa_center);
			if (hover) {
			
				if !instance_exists(obj_textbox) {
					obj_shipyard_controller.tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
					with tb {
						str = "";
						ctb_add_text("[char:"+sprite_get_name(spr_portraitNone)+"]");
					}
				}
			
				with obj_shipyard_controller.tb {
					if str != string(FLAVORTEXT[? string_lower(C.ShipNames[i])]) {
					
						var newTb = instance_create_depth(32,room_height-128,depth,obj_textbox);
						with newTb {
							str = string(FLAVORTEXT[? string_lower(C.ShipNames[i])]);
							ctb_add_text("[char:"+sprite_get_name(spr_portraitNone)+"]"+str);
						}
					
						instance_destroy();
						obj_shipyard_controller.tb = newTb;
					}
				}
			} else {
				//if obj_shipyard_controller.selected != a.label
					//instance_destroy(obj_textbox);
			}
		}
	}
} else {
	SHIPOwned = true;
}