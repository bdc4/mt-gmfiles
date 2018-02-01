/// @description Insert description here
// You can write your code in this editor
draw_self();

if sprite_index != spr
	sprite_index = spr;
	
draw_set_halign(fa_center);
draw_text(x,y+sprite_height,
"This package includes: "+"\nShip: "+_SHIP
+"\nRations: "+string(ITEMS[0])
+"\nMedkits: "+string(ITEMS[1])
+"\nParts: "+string(ITEMS[2])
+"\nClothing: "+string(ITEMS[3])
+"\nTotal: $"+string(cost)
);