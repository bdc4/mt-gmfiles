//@description picks a random system and adds the given damage to it.
//Returns the name of the damaged system as a string for reference.

var dmgSystem = irandom_range(0,array_length_1d(SYSNAMES)-1);
dmgSystem = SYSTEMS[? dmgSystem];
			
var dmg = int64(dmgSystem[? "hp"]);
dmg -= argument0;
dmgSystem[? "hp"] = dmg;

return "[c:red]"+string(dmgSystem[? "name"])+"[c:white]";