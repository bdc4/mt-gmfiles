/*
Created by SlasherX
as seen on SlasherXGAMES
https://www.youtube.com/user/SlasherXGAMES
*/

image_xscale = .25;
image_yscale = image_xscale;

//work out the left and right limits
rightLimit = x+(sprite_width/2)-(image_xscale*75);
leftLimit = x-(sprite_width/2)+(image_xscale*75);
hover = false;
//create the slider for this bar and assign it some values
a = instance_create_depth(x, y, -30, obj_hslider);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.barLength = sprite_width;
a.rightLimit = rightLimit;
a.leftLimit = leftLimit;
a.x = leftLimit;

/* */
/*  */
