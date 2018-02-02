/// @description Insert description here
// You can write your code in this editor
var i_d, stat;
i_d = ds_map_find_value(async_load, "id");
if i_d == msg
   {
   if ds_map_find_value(async_load, "status")
      {
		start_new_game();
      } else {
		//TODO - Show continue button
	  }
   }
