image_angle = direction;
if (rand = 1)
{
	image_xscale = image_xscale * 1;
	image_yscale = image_yscale * 1;
}
else 
{
	if (image_angle > 315 ||image_angle < 45)
	{	
	image_xscale = image_xscale * 1;
	image_yscale = image_yscale * -1;
	}
	if (image_angle > 225 ||image_angle < 135)
	{	
	image_xscale = image_xscale * -1;
	image_yscale = image_yscale * -1;
	}
	else{
	image_xscale = image_xscale * -1
	image_yscale =  image_yscale  *  1
	}
}