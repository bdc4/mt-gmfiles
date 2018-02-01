/// @description Insert description here
// Init Ships

randomize();
SHIPOwned = false;
selected = "None";
Ships = [];

if SHIP[? "name"] == "None" {
	for (var i=0; i < array_length_1d(C.ShipNames); i++) {
		Ships[i] = instance_create_depth(room_width*(i+1)/4,room_height*1/4,depth,obj_card);
		Ships[i].spr = C.ShipSprites[i];
		var name = string_lower(C.ShipNames[i]);
		Ships[i].name = C.ShipNames[i];
		Ships[i].price = C.ShipPrices[i];
	}
}
//Helpful Data

moneyStart = ITEMS[? "money"];

tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
with tb {
	ctb_add_text("Welcome to the shipyard!");
	str = "";
}