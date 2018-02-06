draw_set_font(f_normal);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
ctb_draw();
draw_sprite( char_sprite, char_img, x+sprite_get_width(char_sprite)/2+12, y+sprite_get_height(char_sprite)/2+12 );
