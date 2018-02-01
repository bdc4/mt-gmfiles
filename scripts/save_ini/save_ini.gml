/// @description Insert description here
// You can write your code in this editor

var map = argument0;
var section = argument1;



ini_open("savedata.ini");

var str = "";

var k =  ds_map_find_first(map);

while(k != undefined) // k is non-null
{
	show_debug_message("Section: "+string(section)+" Key: "+string(k)+" Value: "+string(map[? k]))
	
	if k == "prices"
	{
		var l = ds_map_find_first(map[? k]);
		while(l != undefined) {
			var val = map[? k];
			ini_write_string(section, l, string(val[? l]));
			l = ds_map_find_next(map[? k], l);
		}
	}
	
	ini_write_string(section, k, map[? k]);
	k = ds_map_find_next(map, k);
	
}
show_debug_message(".ini save successful!");
ini_close();