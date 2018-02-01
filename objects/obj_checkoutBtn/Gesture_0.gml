/// @description Insert description here
// Continue if money is not negative

if int64(ITEMS[? "money"]) >= 0 {
	
	if visible {

		if instance_exists(obj_store_controller) {
			for (var i=0; i < array_length_1d(obj_store_controller.Bars); i++) {
		
				//Set inventory values
				var label = string_lower(obj_store_controller.Bars[i].a.label);
				var item = int64(ITEMS[? label]);
				item += obj_store_controller.Bars[i].a.percentage;
				ITEMS[? label] = item;
		
			}
			audio_play_sound(snd_checkout,0,false);
			room_restart();
		}
	
		else if instance_exists(obj_shipyard_controller) {
			with (obj_shipyard_controller) {
				for (var i=0; i<array_length_1d(C.ShipNames); i++) {
					if ITEMS[? "money"] != moneyStart {
						if Ships[i].selected {
							SHIP[? "name"] = C.ShipNames[i];
							SHIP[? "spr"] = C.ShipSprites[i];
							audio_play_sound(snd_checkout,0,false);
						}
					}
				}
				room_restart();
			}
		}
		
		else if instance_exists(obj_rq_controller) {
			with (obj_rq_controller) {
				for (var i=0; i<array_length_1d(pkg); i++) {
					if ITEMS[? "money"] != moneyStart {
						if pkg[i].selected {
							
							for (var j = 0; j < array_length_1d(ITEMNAMES)-1; ++j) {
							    var label = string_lower(ITEMNAMES[j]);
								var item = int64(ITEMS[? label]);
								item += pkg[i].ITEMSNum[j];
								ITEMS[? label] = item;
							}
							
							SHIP[? "name"] = pkg[i]._SHIP;
							SHIP[? "spr"] = pkg[i].spr;
							
							audio_play_sound(snd_checkout,0,false);
						}
					}
				}
				room_restart();
			}
		}
	}
	
} else {
	messageAlpha = 5;
}
