rand = irandom_range(1,10);

if(rand > 5)
{
image_xscale = global.sprite_scale;
image_yscale = global.sprite_scale;
}
else
{
image_xscale = global.sprite_scale;
image_yscale = global.sprite_scale*-1;
}


var inst = instance_create_layer(x+irandom_range(0,25)-50, y+irandom_range(0,25)-50, "Instances", obj_blood);
		with (inst)
		{
		}
var inst = instance_create_layer(x+irandom_range(0,25)-50, y+irandom_range(0,25)-50, "Instances", obj_blood);
		with (inst)
		{
		}
var inst = instance_create_layer(x+irandom_range(0,25)-50, y+irandom_range(0,25)-50, "Instances", obj_blood);
		with (inst)
		{
		}