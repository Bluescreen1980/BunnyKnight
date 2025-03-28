if (position_meeting(x, y, obj_blood) || position_meeting(x, y, obj_corpse))
{
	if (global.bunny_dirtyness < 100){
	global.bunny_dirtyness += 2;
	}
}
else if (global.bunny_dirtyness >= 50)
{
	diceroll = irandom_range(1,100)
	
	if (diceroll <= global.bunny_dirtyness)
	{
	global.temp_number = direction;

	switch (global.bunnydirection) {
	    case "north":
			global.temp_number = 90;
	        break;
		case "south":
			global.temp_number = 270;
	        break;
		case "east":
			 global.temp_number = 0;
	        break;	
		case "west":
			global.temp_number = 180;
	        break;
	    default:
	        
	        break;
	}

	var inst = instance_create_layer(x, y+5, "ground", obj_footprints);
		with (inst)
		{
			direction = global.temp_number;			
			
			
		}
	 
	global.bunny_dirtyness = global.bunny_dirtyness-irandom_range(0,50);
	
	if (global.bunny_dirtyness < 0) { global.bunny_dirtyness = 0};
	}
}


alarm[1]=5;