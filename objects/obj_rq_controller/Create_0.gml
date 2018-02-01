/// @description Populate package objects
// Init packages
pkg = [];
pkgNames = ["Basic","Medium","Advanced"];
pkgContents[0] = [300,75,75,25];
pkgContents[1] = [200,50,50,15];
pkgContents[2] = [100,25,15,10];

var _station = STATIONS[? 0];

for (var i=0; i < 3; i++) {

pkg[i] = instance_create_depth(room_width*(i+1)/4,room_height*1/4,depth,obj_card);

	with pkg[i] {
		_SHIP = C.ShipNames[i];
		spr = C.ShipSprites[i];
		ITEMSNum = obj_rq_controller.pkgContents[i];
		name = obj_rq_controller.pkgNames[i];
		t=0;
		
		var j=0;
		while j<array_length_1d(ITEMNAMES)-1 {
			var p = int64(_station[? ITEMNAMES[j]+"_price"])
			var n = ITEMSNum[j]; 
			t = t + (n * p);
			j++;
		}
		price = t + C.ShipPrices[i];
	}
	
}

//Helpful Data

moneyStart = ITEMS[? "money"];

tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
with tb {
	ctb_add_text("Welcome to the Requisitions Office!");
	str = "";
}