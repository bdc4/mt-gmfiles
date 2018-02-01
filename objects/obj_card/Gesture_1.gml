/// @description Insert description here
// You can write your code in this editor
if room == room_cantina {
	for (var num=0; num < 4; num++) {
		var CREWNum = CREW[? num];
		while CREWNum[? "name"] == "None" {
			CREWNum[? "name"] = name;
			CREWNum[? "portrait"] = spr;
			CREWNum[? "img_index"] = image_index;
			CREWNum[? "perk"] = perk;
			CREWNum[? "fault"] = fault;
			instance_destroy();
			exit;
		}
	}
	addStr = "Your CREW is already full!";
}