// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // ui_defaults

global.__objectNames[0] = "ui_defaults";

global.__objectDepths[24] = 0; // ui_defaults
global.__objectDepths[25] = 0; // ui_label
global.__objectDepths[26] = 0; // ui_button_ani
global.__objectDepths[27] = 0; // ui_listbox_ext
global.__objectDepths[28] = 0; // ui_listbox
global.__objectDepths[29] = 0; // ui_image
global.__objectDepths[30] = 0; // ui_button
global.__objectDepths[31] = 0; // ui_bubble
global.__objectDepths[32] = 0; // ui_label_score
global.__objectDepths[33] = 0; // ui_editbox
global.__objectDepths[34] = 123321; // ui_dialog
global.__objectDepths[35] = 0; // ui_combobox
global.__objectDepths[36] = 0; // ui_checkgroup
global.__objectDepths[37] = 0; // ui_checkbox
global.__objectDepths[38] = 0; // ui_textbox
global.__objectDepths[39] = 0; // ui_textani
global.__objectDepths[40] = 0; // ui_toggle
global.__objectDepths[41] = 0; // ui_slider
global.__objectDepths[42] = 123321; // ui_panel
global.__objectDepths[43] = 0; // ui_listbox_horz
global.__objectDepths[44] = 0; // ui_gauge
global.__objectDepths[45] = 0; // ui_keyboard
global.__objectDepths[46] = 0; // ui_ani_control
global.__objectDepths[47] = 0; // ui_swipe


global.__objectNames[24] = "ui_defaults";
global.__objectNames[25] = "ui_label";
global.__objectNames[26] = "ui_button_ani";
global.__objectNames[27] = "ui_listbox_ext";
global.__objectNames[28] = "ui_listbox";
global.__objectNames[29] = "ui_image";
global.__objectNames[30] = "ui_button";
global.__objectNames[31] = "ui_bubble";
global.__objectNames[32] = "ui_label_score";
global.__objectNames[33] = "ui_editbox";
global.__objectNames[34] = "ui_dialog";
global.__objectNames[35] = "ui_combobox";
global.__objectNames[36] = "ui_checkgroup";
global.__objectNames[37] = "ui_checkbox";
global.__objectNames[38] = "ui_textbox";
global.__objectNames[39] = "ui_textani";
global.__objectNames[40] = "ui_toggle";
global.__objectNames[41] = "ui_slider";
global.__objectNames[42] = "ui_panel";
global.__objectNames[43] = "ui_listbox_horz";
global.__objectNames[44] = "ui_gauge";
global.__objectNames[45] = "ui_keyboard";
global.__objectNames[46] = "ui_ani_control";
global.__objectNames[47] = "ui_swipe";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for