title = "Space Pirates! : ";
msg = "Oh noes! Thar be pirates!";

var ed = instance_create_depth(0,0,depth,obj_interactDisplay);
ed.img = img;

with ed {
	u_init_interact_btns(true,true,false);
	
	btn_1.uiTextValue = "Attack!";
	btn_1.uiControlName = "attack";
	
	btn_2.uiTextValue = "Negotiate";
	btn_2.uiControlName = "talk";

}