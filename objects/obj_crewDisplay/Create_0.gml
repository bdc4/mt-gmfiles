/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 4; ++i) {
	
	_CREW = CREW[? i];
	_crewDisplay[i] = instance_create_depth(-140+room_width*(i+1)*1.25/5,room_height*2/8,depth-10,obj_card);

	with _crewDisplay[i] {
		var c = obj_crewDisplay._CREW;
		hp = c[? "hp"];
		hpMax = c[? "hpMax"];
		morale = c[? "morale"];
		spr = c[? "portrait"];
		ID = "CREWCard";
		image_index = c[? "img_index"];
		assigned = c[? "assigned"];
		name = c[? "name"];
	}
}