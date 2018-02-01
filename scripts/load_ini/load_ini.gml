/// @description Insert description here
// You can write your code in this editor

var map = argument0;
var section = argument1;

ini_open("savedata.ini");

var k =  ds_map_find_first(map);

while(k != undefined) // k is non-null
{
	show_debug_message("Section: "+string(section)+" Key: "+string(k)+" Value: "+string(map[? k]))
	var data = ini_read_string(string(section), string(k), undefined);
	map[? string(k)] = data;
	
	k = ds_map_find_next(map, k);
}
show_debug_message(".ini load successful!");
ini_close();