
switch (global.bunnydirection) {
	    case "north":
			
			if (offhandstrike == 1)
			{
				x = global.bunny_x - 16
				y = global.bunny_y - 33;
				image_xscale = sword_yscale*-1;
				image_yscale = sword_xscale*-1;
				depth = global.bunny_depth+1
				show_debug_message("offhand 1");
				direction = 135
			}
			else if (offhandstrike == 2)
			{			 
				x = global.bunny_x + 16
				y = global.bunny_y - 33;
				image_xscale = sword_xscale*1;
				image_yscale = sword_yscale*-1;
				depth = global.bunny_depth+1	
				show_debug_message("offhand 2");
				direction = 225
			}
			else if (offhandstrike == 3)
			{	
				show_debug_message("offhand 3!!!!!!!!!!!!!!");
			}
			
	    break;
		case "south":
		if (offhandstrike == 1)
			{
			image_xscale = sword_xscale*-1;
			image_yscale = sword_yscale*1;
			x = global.bunny_x - 16
			y = global.bunny_y - 16;
			depth = global.bunny_depth-1;
			show_debug_message("offhand 1 south");
			}
		else if (offhandstrike == 2)
			{
			image_xscale = sword_xscale*1;
			image_yscale = sword_yscale*1;
			x = global.bunny_x + 16
			y = global.bunny_y - 16;
			depth = global.bunny_depth-1;
			show_debug_message("offhand 2 south");
			}
			
			
	    break;
		case "east":
		if (offhandstrike == 1)
			{
			image_xscale = sword_xscale*1;
			image_yscale = sword_yscale*-1;
			x = global.bunny_x + 16
			y = global.bunny_y - 28;
			depth = global.bunny_depth+1;
			}
			else if (offhandstrike == 2)
			{
			image_xscale = sword_xscale*1;
			image_xscale = sword_yscale*1;
			x = global.bunny_x + 16
			y = global.bunny_y - 28;
			depth = global.bunny_depth-1;	
				
			}
	    break;	
		case "west":
			if (offhandstrike == 1)
			{
				image_xscale = sword_xscale*-1;
				image_yscale = sword_yscale*1;
				x = global.bunny_x - 16
				y = global.bunny_y - 28;
				depth = global.bunny_depth-1;
			}
			else if (offhandstrike == 2)
			{
				image_xscale = sword_xscale*-1;
				image_yscale = sword_yscale*-1;
				x = global.bunny_x - 16
				y = global.bunny_y - 28;
				depth = global.bunny_depth+1;
				
			}
	    break;
	    default:
	        
	        break;
	}
	
	
 