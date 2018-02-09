//@description picks a random crew and adds the given damage to it.
//Returns the name of the damaged crew as a string for reference.

var dmgCrew = irandom_range(0,ds_map_size(CREW)-1);
dmgCrew = CREW[? dmgCrew];

var meds = ITEMS[? "medkits"];
meds = int64(meds);

meds -= round(argument0*.25);
ITEMS[? "medkits"] = meds;

if meds < 0 {
	ITEMS[? "medkits"] = 0;
	argument0 = argument0*2;
}

var dmg = int64(dmgCrew[? "hp"]);
dmg -= argument0;
dmgCrew[? "hp"] = dmg;

return string(dmgCrew[? "name"]);