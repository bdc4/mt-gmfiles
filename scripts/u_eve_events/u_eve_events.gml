//@Description - Complex logic for handling events on the EVENTS table

var e = argument0; //e=3; //Set e to desired event value to debug


if e <= 1 {
	
	#region #1: Space Debris
	
		title = "Space Debris: ";
		var roll = irandom_range(1,6);
		var salvage = u_get_random_items();
		if roll == 1 {
		
			var _sys = u_damage_random_system(1);
		
			msg = "Debris from space has collided with the ship causing damage to the "
			+_sys+" department, but we managed to salvage "+salvage+" from the debris.";
		} else {
			msg = "We managed to salvage "+salvage+" from the debris.";	
		}
		
	#endregion
	
} else if e <= 2 {
	
	#region #2: Abandoned Spacecraft
	
		title = "Abandoned Spacecraft: ";
		var roll = irandom_range(1,6);
		if roll == 1 {
			var _sys = u_damage_random_system(1);
			msg = "It's a trap! Your crew escaped unscathed, but your "+_sys+" department took some damage.";
		} else if roll == 2 {
			var _crew = u_damage_random_crew(1);
			msg = "It's a trap! During the escape, "+_crew+" was hurt.";
		} else {
			var salv_1 = u_get_random_items();
			var salv_2 = u_get_random_items();
			msg = "After making sure the derilict ship was abandoned, your crew scavenged "+salv_1+" and "+salv_2+".";
		}
		
	#endregion
	
} else if e <= 3 {
	
	#region #3: Comet Sighted
	
		title = "Comet Sighting: "
		msg = "The crew spots a bright comet off the side of the ship. ";
		var roll = irandom_range(1,6);
		if roll == 1 {
			msg += "It's a pretty sight, but otherwise an uneventful day.";
		} else if roll >=2 {
			var scrap1 = u_get_random_items();
			msg += "We're able to use some of the materials in the comet to craft "+
			scrap1;
		
			if roll >= 5 {
				var scrap2 = u_get_random_items();
				msg += " and "+scrap2;
			}
			msg += ".";	
		}
	
	#endregion

} else if e <= 4 {

	#region #4: Asteroid Sighted
	
		title = "Asteroid Sighting: "
		msg = "The crew spots an asteroid off the side of the ship. ";
		var roll = irandom_range(1,6);
		if roll == 1 {
			var _dmg = u_damage_random_system(1);
			msg += "Before it can be intercepted, it barrels into the ship, damaging the "+_dmg+" department.";
		} else if roll >=2 {
			var scrap1 = u_get_random_items();
			msg += "We're able intercept it and to use some of the materials in the asteroid to craft "+
			scrap1;
		
			if roll >= 5 {
				var scrap2 = u_get_random_items();
				msg += " and "+scrap2;
			}
			msg += ".";	
		}
	
	#endregion

} else if e <= 5 {

	#region #5: Space Pirates TODO
	
	return;
	
	#endregion

} else if e <= 6 {

	#region #6: Surveyor Encounter TODO
	
		return;
	
	#endregion

}

else {
	return;
}