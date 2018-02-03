/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_crewDisplay) {
//	cd = instance_create_depth(0,0,depth,obj_crewDisplay);
}
C.showMenu = true;

var rStr = "";
var sStr = "";
var cStr = "";

failStr = "";
clear = false;

for (var i = 0; i < ds_map_size(CREW); ++i) {
    
	var _CREW = CREW[? i];
	var _CREW0 = CREW[? 0];
	var _CREW1 = CREW[? 1];
	var _CREW2 = CREW[? 2];
	var _CREW3 = CREW[? 3];
	
	if (int64(ITEMS[? "rations"]) < 100) 
	or (string(SHIP[? "name"]) == "None") 
	or (string(_CREW0[? "name"]) == "None")
	or (string(_CREW1[? "name"]) == "None")
	or (string(_CREW2[? "name"]) == "None")
	or (string(_CREW3[? "name"]) == "None"){
		
		if int64(ITEMS[? "rations"]) < 100 {
			rStr = "You must have at least 100 rations.\n";	
		} else {
			rStr = "";	
		}
		
		if (string(SHIP[? "name"]) == "None") {
			sStr = "You must own a SHIP.\n";
		} else {
			sStr = "";	
		}
		
		if (string(_CREW[? "name"]) == "None") {
			cStr = "You must have a fully staffed CREW.\n";	
		} else {
			cStr = "";	
		}
	
	} else {
		clear = true;	
	}
}
failStr =rStr+sStr+cStr;