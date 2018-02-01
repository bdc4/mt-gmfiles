
var map = argument0;
var searchWord = argument1;
var keyWord = argument2;

for (var i = 0; i < ds_map_size(map); ++i) {
    var _c = map[? i];
	if _c[? searchWord] == keyWord {
		return _c;
	} 
}

return false;