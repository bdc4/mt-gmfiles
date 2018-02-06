var sname = asset_get_index(argument[0]);
char_sprite = sname;


switch( argument[0] ) {
    //case "char": char_sprite = spr_char; break;
    case "char2": char_sprite = spr_char_2; break;
	case "nochar": char_sprite = ""; break;
}
