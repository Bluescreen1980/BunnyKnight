global.bunny_x= x;
global.bunny_y= y;
global.bunny_depth = depth;

if (delay > 0){
	delay = delay - 1;
}

	var _key = keyboard_lastchar;

 
	if keyboard_check(ord("W"))
	{
		
	    show_debug_message("w key pressed");
		global.bunnydirection = "north";
		global.bunnystop = false;
	}	
	else if keyboard_check(ord("S"))
	{
	    show_debug_message("s key pressed");
		global.bunnydirection = "south";
		global.bunnystop = false;
	}
	else if keyboard_check(ord("A"))
	{
	    show_debug_message("a key pressed");
		global.bunnydirection = "west";
		global.bunnystop = false;
	} 
	
	else if keyboard_check(ord("D"))
	{
	    show_debug_message("d key pressed");
		global.bunnydirection = "east";
		global.bunnystop = false;
	} 	
	else 
	{
	global.bunnystop = true;
	}

if (global.bunnystop == false)
{ 
	global.bunnyCurrentSpeed = global.bunnyspeed;
	
	switch (global.bunnydirection) {
	    case "north":
	        image_xscale = global.sprite_scale;
			y=y-global.bunnyCurrentSpeed;
			sprite_index = spr_bunny_north_walk
			direction = 90;
	        break;
		case "south":
		    image_xscale = global.sprite_scale;
	        y=y+global.bunnyCurrentSpeed;
			sprite_index = spr_bunny_south_walk
			direction = 270;
	        break;
		case "east":
		   image_xscale = global.sprite_scale;
			sprite_index = spr_bunny_east_walk
	         x=x+global.bunnyCurrentSpeed;
			 direction = 0;
	        break;	
		case "west":
			image_xscale = -global.sprite_scale;
			sprite_index = spr_bunny_east_walk
	        x=x-global.bunnyCurrentSpeed;
			direction = 180;
	        break;
	    default:
	        
	        break;
	}
}


if (global.bunnystop == true)
{ 
	global.bunnyCurrentSpeed =  0;
	
	switch (global.bunnydirection) {
	    case "north":
	        image_xscale = global.sprite_scale;
			sprite_index = spr_bunny_idle_north
	        break;
		case "south":
		    image_xscale = global.sprite_scale;
			sprite_index = spr_bunny_idle_south 
	        break;
		case "east":
		   image_xscale = global.sprite_scale;
		   sprite_index = spr_bunny_idle;
	        break;	
		case "west":
			image_xscale = -global.sprite_scale;
			sprite_index =  spr_bunny_idle;

	        break;
	    default:
	        
	        break;
	}
}
 