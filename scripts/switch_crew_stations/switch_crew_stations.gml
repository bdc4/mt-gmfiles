var moveTo = argument0;

var _c = search_map_for_matching(CREW,"name",name);	
var _switch = search_map_for_matching(CREW,"assigned",moveTo);
_switch[? "assigned"] = _c[? "assigned"];
		
with obj_card {
	if assigned == moveTo and ID == "CREWCard" {
		assigned = _switch[? "assigned"];	
	}
}
		
_c[? "assigned"] = moveTo;
assigned = _c[? "assigned"];

if _c == _switch
	return;

var msg = _c[? "name"]+" assigned to "+_c[? "assigned"]+". "
+_switch[? "name"]+" assigned to "+_switch[? "assigned"]+".";

update_textbox(msg);