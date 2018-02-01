var eveNum = argument0; //eveNum = 3;

if eveNum <= 1 {
	var _crew = u_damage_random_crew(10);
	title = "Minor Injury: ";
	msg = _crew+" suffered some minor whiplash.";
} else if eveNum <= 2 {
	var _crew = u_damage_random_crew(10);
	title = "Minor Injury: ";
	msg = _crew+" has developed nausea.";
} else if eveNum <= 3 {
	var _crew = u_damage_random_crew(0);
	title = "Minor Debuff: ";
	msg = _crew+" has developed cabin fever, "
	+"and will have a debuff to their stats until visiting the next space station.";
} else if eveNum <= 4 {
	var _crew = u_damage_random_crew(15);
	title = "Minor Injury: ";
	msg = _crew+" has suffered minor cuts and/or bruises.";
} else if eveNum <= 5 {
	var _crew = u_damage_random_crew(20);
	title = "Minor Injury: "
	msg = _crew+" twisted their ankle pretty badly.";
} else if eveNum <= 6 {
	var _crew = u_damage_random_crew(5);
	var c_map = search_map_for_matching(CREW, "name", _crew);
	
	if u_check_for_perk("Systems Specialist", 30, false) {
		title = "Congrats!: ";
		msg = "Due to the diligent work of your "+string(_perk)+", your crew avoided a negative event.";
		return;
	}

	title = "Permenant Minor Injury: ";
	msg = _crew+" has developed minor radiation sickness. As a result, they will suffer a permenant 10% decrease to their health."
	
} else {
	return;	
}