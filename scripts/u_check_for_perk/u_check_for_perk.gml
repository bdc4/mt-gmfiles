//Checks to see if you have a specialist. If so, negates the event

var _perk = argument0; //Required perk for the crew member to have
var _throw = argument1; //Percent chance for crew member to succeed
var _assignment = argument2; //Room the member must be in at the time; 
							//if not required, use false as the argument value

var _ss = search_map_for_matching(CREW, "perk", _perk);


if _ss != false {
	
	//If the crew member needs to be in a certain room, check for that
	if _assignment != false and _ss[? "assigned"] != _assignment
		return false;
	
	var savingThrow = irandom_range(1,100);
	if savingThrow <= _throw {
		return true;
	}
} 

return false;