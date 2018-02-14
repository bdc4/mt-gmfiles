var eveNum = argument0; //eveNum = 3;
title = "[c:orange]Minor Injury[c:white]: ";
img = spr_medbayIcon;
	
if eveNum <= 1 {
	var _crew = u_damage_random_crew(10);
	msg = _crew+" suffered some minor whiplash.";
} else if eveNum <= 2 {
	var _crew = u_damage_random_crew(10);
	msg = _crew+" has developed nausea.";
} else if eveNum <= 3 {
	var _crew = u_damage_random_crew(0);
	msg = _crew+" has developed cabin fever, "
	+"and will have a debuff to their stats until visiting the next space station.";
} else if eveNum <= 4 {
	var _crew = u_damage_random_crew(15);
	msg = _crew+" has suffered minor cuts and/or bruises.";
} else if eveNum <= 5 {
	var _crew = u_damage_random_crew(20);
	msg = _crew+" twisted their ankle pretty badly.";
} else if eveNum <= 6 {
	var _crew = u_damage_random_crew(5);
	var c_map = search_map_for_matching(CREW, "name", _crew);
	
	if u_check_for_perk("Systems Specialist", 30, false) {
		title = "Congrats!: ";
		msg = "Due to the diligent work of your "+string(_perk)+", your crew avoided a negative event.";
		return;
	}

	title = "[c:red]Permenant Minor Injury[c:white]: ";
	msg = _crew+" has developed minor radiation sickness. As a result, they will suffer a permenant 10% decrease to their health."
	
	var _hp_max = int64(c_map[? "hpMax"]);
	_hp_max -= 10;
	c_map[? "hpMax"] = _hp_max;
}

var _img_index = 0;
var _portrait = search_map_for_matching(CREW,"name",_crew);

_img_index = _portrait[? "img_index"];
_portrait = sprite_get_name(_portrait[? "portrait"]);

title = "[img:"+string(_img_index)+"]"+"[char:"+_portrait+"]"+title;
return;	