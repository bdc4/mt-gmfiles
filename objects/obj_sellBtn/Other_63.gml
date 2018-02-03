/// @description Insert description here
// You can write your code in this editor

var i_d, stat;
i_d = ds_map_find_value(async_load, "id");

if instance_exists(obj_shipyard_controller) && SHIP[? "name"] != "None" {
	if i_d == msgShipyard {
	   if ds_map_find_value(async_load, "status") {
			for (var i=0; i<array_length_1d(C.ShipNames); i++) {
				
				if SHIP[? "name"] == C.ShipNames[i] {
					ITEMS[? "money"] = int64(ITEMS[? "money"]) + C.ShipPrices[i];
					ITEMS[? "money"] = string(ITEMS[? "money"]);
					SHIP[? "name"] = "None";
					SHIP[? "spr"] = spr_shipEmpty;
					instance_destroy();
					room_restart();
				}
			}
		}
	}
}
   
if instance_exists(obj_store_controller) {
	if i_d == msgStore {
	   if ds_map_find_value(async_load, "status") {
				
			var refund = 0;
	
			for (var i=0; i < array_length_1d(ITEMNAMES)-1; i++) {
				var _station = STATIONS[? 0];
				var label = string_lower(ITEMNAMES[i]);
				var i_number = int64(ITEMS[? label]);
				refund =+ i_number * int64(_station[? label+"_price"]);

				ITEMS[? "money"] = int64(ITEMS[? "money"]) + refund
				ITEMS[? "money"] = string(ITEMS[? "money"]);
				ITEMS[? label] = 0;
		
				//show_message("Money after refund: "+ITEMS[? "money"]);
			}
			instance_destroy();
			room_restart();
		}
	}
}