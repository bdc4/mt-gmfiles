//Picks a random item and adds a random amount to inventory
//Returns the type and number as a string

var salvageType = irandom_range(0,array_length_1d(ITEMNAMES)-1);
salvageType = ITEMNAMES[salvageType];
var salvageNum = irandom_range(2,4);
	
ITEMS[? salvageType] = (int64(ITEMS[? salvageType])+salvageNum);

return "[c:lime]"+string(salvageNum)+" "+string(salvageType)+"[c:white]";