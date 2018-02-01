/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_player_TD;

Types = ds_map_create();

typeList = ["store", "shipyard", "rq_office", "cantina", "launchpad", "none"];
nameList = ["Store", "Shipyard", "RQ Office", "Cantina", "Launchpad", "NONE"];
typeRoom = [room_store,room_shipyard,room_rq, room_cantina, room_launchpad, -1];
spriteList = [spr_store_doormat, spr_shipyard_doormat, /*TODO*/ spr_shipyard_doormat, spr_store_doormat, spr_shipyard_doormat, spr_empty];

for (var i=0; i<array_length_1d(typeList); i++) {
	var m = ds_map_create();
	m[? "type"] = typeList[i];
	m[? "name"] = nameList[i];
	m[? "room"] = typeRoom[i];
	m[? "sprite"] = spriteList[i];
	
	var val = string(typeList[i]);
	
	Types[? val] = m;
}

Doormat = Types[? "none"];