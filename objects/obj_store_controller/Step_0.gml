/// @description Insert description here

if !instance_exists(obj_textbox) {
	tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
	with tb {str = "";}
	}

// Change money value
cost = 0;
	
for (var i=0; i<array_length_1d(Bars); i++) {

	//Calculate cost
	cost += Bars[i].a.percentage*Bars[i].a.multiplier;
	
	//Set flavor text
	with Bars[i] {
		draw_set_halign(fa_center);
		if (hover or a.grab) {
			
			obj_store_controller.selected = a.label;
			
			if !instance_exists(obj_textbox) {
				obj_store_controller.tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
				with tb {
					str = "";
					ctb_add_text("[char:"+sprite_get_name(spr_portraitNone)+"]");
				}
			}
			
			with obj_store_controller.tb {
				if str != string(FLAVORTEXT[? string_lower(obj_store_controller.itemNames[i])]) {
					
					var newTb = instance_create_depth(32,room_height-128,depth,obj_textbox);
					with newTb {
						str = string(FLAVORTEXT[? string_lower(obj_store_controller.itemNames[i])]);
						ctb_add_text("[char:"+sprite_get_name(spr_portraitNone)+"]"+str);
					}
					
					instance_destroy();
					obj_store_controller.tb = newTb;
				}
			}
		} else {
			//if obj_store_controller.selected != a.label
				//instance_destroy(obj_textbox);
		}
	}
}

//Set total
var total = int64(moneyStart)-cost;
ITEMS[? "money"] = total;