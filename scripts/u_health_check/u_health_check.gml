for (var i = 0; i < ds_map_size(CREW); ++i) {
   var _c = CREW[? i];
   var _hp = int64(_c[? "hp"]);
   var _mk = int64(ITEMS[? "medkits"]);
   
   if _hp <= 80 and _mk > 0 {
	   _hp += irandom_range(3,7);
	   _mk -= 1;
	} else {
		var hpRoll = irandom_range(1,5);
		if hpRoll == 5
			_hp += irandom_range(-2,2);	
	}
	_hp = clamp(_hp,0,_c[? "hpMax"]);
	_c[? "hp"] = _hp;
	ITEMS[? "medkits"] = _mk;
}