/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_textbox) {
	tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
	with tb {str = "";}
	}

for (var i=0; i<array_length_1d(person); i++) {
	
	//Calculate cost
	cost = 0;
	//cost += person[i].cost;
	
	//Set flavor text
	with person[i] {
		draw_set_halign(fa_center);
		if (hover) {
			
			if !instance_exists(obj_textbox) {
				obj_cantina_controller.tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
				with tb {
					str = "";
					ctb_add_text("[char:"+sprite_get_name(spr_portraitNone)+"]");
				}
			}
			
			with obj_cantina_controller.tb {
				var p = obj_cantina_controller.person[i];
				var locale = "nowhere";
				var aStr = "";
				if p.birthplace == "Earthborn" {locale = "Earth"};
				if p.birthplace == "Spaceborn" {locale = "Mother Station"};
				if p.affiliation == "Arcadian" {aStr = "an ";} else {aStr = "a ";}
				if str != "My name is "+p.name+". I'm "+aStr+p.affiliation+"-trained "+p.special+" from "+locale+". Nice to meet you." {
					
					var newTb = instance_create_depth(32,room_height-128,depth,obj_textbox);
					with newTb {
						
						str =  "My name is "+p.name+". I'm "+aStr+p.affiliation+"-trained "+p.special+" from "+locale+". Nice to meet you."//string(FLAVORTEXT[? string_lower(obj_cantina_controller.personNames[i])+"_person"]);
						var _portrait = sprite_get_name(p.spr);
						_portrait = "[char:"+_portrait+"]"+"[img:"+string(p.image_index)+"]";
						ctb_add_text(_portrait+str);
					}
					
					instance_destroy();
					obj_cantina_controller.tb = newTb;
				}
			}
		} 
	}
}