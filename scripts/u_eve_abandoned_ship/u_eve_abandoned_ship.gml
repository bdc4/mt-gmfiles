title = "Mysterious Spacecraft: ";
msg = "There appears to be a derilict spacecraft. What would you like to do?";

var ed = instance_create_depth(0,0,depth,obj_interactDisplay);
ed.img = img;

with ed {
	u_init_interact_btns(true,true,false);
	
	btn_1.uiTextValue = "Explore";
	btn_1.uiControlName = "explore";
	
	btn_2.uiTextValue = "Ignore";
	btn_2.uiControlName = "ignore";

}