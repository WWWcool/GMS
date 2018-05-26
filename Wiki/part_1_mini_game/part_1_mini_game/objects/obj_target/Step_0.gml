/// @description Insert description here
// You can write your code in this editor

if(!c_ok)
{
	if(point_in_circle(mouse_x,mouse_y,x,y,c_rad))
	{
		c_rad += scr_get_delta(c_rad_speed);
		if(c_rad >=  c_rad_max)
		{
			c_ok = 1;
			image_blend = c_green;
		}
	}
	else
	{
		c_rad -= scr_get_delta(c_rad_speed/4);
		if(c_rad <=  0)
		{
			scr_lose();
			instance_destroy();
		}
	}
}
else
{
	c_rad -= scr_get_delta(c_rad_speed*3);
	if(c_rad <=  0)
	{
		instance_destroy();
	}
}


