if (delay <= 0)
{

var inst = instance_create_layer(x+10, y-30, "Instances", obj_sword_down);
with (inst)
{
	offhandstrike = 2
}
global.bunnyCurrentSpeed = 1;

delay = global.hitDelay;
}