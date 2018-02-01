var label = argument0;
var order = argument1;
var multi = argument2;

bar = instance_create_layer(x,y+order*64,layer,obj_hbar);

with bar {
	a.label = label;
	a.multiplier = multi;
}

return bar;