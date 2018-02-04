uiFont = f_menu;
if file_exists("savedata.ini") {
	uiTextColor = $05DF37;
	uiControlName = "loadgame";
} else {
	uiTextColor = $4D4D4D;
	uiControlName = "noloaddata";
}
uiTextValue = "Continue";
uiEventObject = obj_gameMenu;
x=0;
uiMoveX = xstart;
uiMoveY = ystart;
uiAniMove = true;