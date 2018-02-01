/// @description Insert description here
// Init Bars
randomize();
selected = "none";
itemNames = ["Rations", "Medkits", "Parts", "Clothing"];
Bars = [];
cost = 0;
total = 0;

for (var i=0; i < array_length_1d(itemNames); i++) {
	var _station = STATIONS[? 0];
	var prices = int64(_station[? ITEMNAMES[i]+"_price"]);
	Bars[i] = new_horiz_slider(itemNames[i],i, prices)
	var val = string_lower(itemNames[i]);
	Bars[i].a.itemNum = ITEMS[? val];
	
	if int64(ITEMS[? val]) != 0 && !instance_exists(obj_sellBtn)
		instance_create_depth(room_width*3/4, room_height*1/4, depth, obj_sellBtn)
}


//Helpful Data
//BarItems = [barRations, barMedkits, barParts];
moneyStart = ITEMS[? "money"];

tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
with tb {
	ctb_add_text("Welcome to the shop!");
	str = "";
}