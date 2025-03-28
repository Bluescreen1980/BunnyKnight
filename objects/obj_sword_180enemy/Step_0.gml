//depth = -y - 2
alarm[1]=1;

if (offhandstrike == 1){
image_xscale = sword_xscale;
}
else{
image_yscale = sword_yscale*-1;
}

 


switch (strike_dir) {
	    case "north":
			
			if (offhandstrike == 1)
			{
				
				image_xscale = sword_xscale*-1;
				image_yscale = sword_yscale*-1;
 
			}
			else if (offhandstrike == 2)
			{			 
				image_xscale = sword_xscale*1;
				image_yscale = sword_yscale*-1;
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
			 
			}
		else if (offhandstrike == 2)
			{
			image_xscale =sword_xscale*1;
			image_yscale =sword_yscale*1;
			 
			}
			
			
	    break;
		case "east":
		if (offhandstrike == 1)
			{
			image_xscale = sword_xscale*1;
			image_yscale = sword_yscale*-1;
			 
			}
			else if (offhandstrike == 2)
			{
			image_xscale = sword_xscale*1;
			image_yscale = sword_yscale*1;
  	
				
			}
	    break;	
		case "west":
			if (offhandstrike == 1)
			{
				image_xscale = sword_xscale*-1;
				image_yscale = sword_yscale*1;

 
			}
			else if (offhandstrike == 2)
			{
				image_xscale = sword_xscale *-1;
				image_yscale = sword_yscale *-1;

 
				
			}
	    break;
	    default:
	        
	        break;
	}
	