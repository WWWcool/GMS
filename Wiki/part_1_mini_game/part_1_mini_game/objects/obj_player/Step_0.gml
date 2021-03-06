/// @description Control and collision
if(!stop_move)
{
	var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	var hspd = 0;
	var vspd = 0;

	if (move_x != 0 || move_y != 0)
	{
	    var dir = point_direction( 0, 0, move_x , move_y );
	    hspd =  lengthdir_x(spd,dir);
	    vspd =  lengthdir_y(spd,dir);
	
		image_angle = dir + 90;
	
		if(place_meeting(x + hspd,y,obj_wall))
		{
			while(!place_meeting(x + sign(hspd),y,obj_wall))
			{
				x += sign(hspd);
			}
			buf_x = x;
			hspd = 0;
		}
	
		if(place_meeting(x,y + vspd,obj_wall))
		{
			while(!place_meeting(x,y + sign(vspd),obj_wall))
			{
				y += sign(vspd);
			}
			buf_y = y;
			vspd = 0;
		}
	
		buf_x += hspd;
		buf_y += vspd;
	
	    x = round(buf_x);
	    y = round(buf_y);
	
		var inst = collision_circle(x,y,sprite_get_width(sprite_index)/2,obj_ball,0,1);
		if(instance_exists(inst))
		{
			if(inst.ball_color_index == scr_get_target_index())
			{
				with(inst)
				{
					instance_create_layer(x,y,"Efx",obj_exf_explode);
					instance_destroy();
				}
			}
		}
		if(point_distance(x,y,track_x,track_y) > track_delta)
		{
			track_x = x;
			track_y = y;
		
			var inst = instance_create_layer(x,y,"Instances",obj_efx_track)
			if(instance_exists(inst))
			{
				inst.image_angle = image_angle;
			}
		}
	}
}

if(instance_number(obj_ball) == 0)
{
	x = room_width/2;
	y = room_height/2;
	image_angle = 0;
	stop_move = 1;
	if(random_delay <= 0)
	{
		instance_create_layer(irandom(room_width),irandom(room_height),"Efx",obj_exf_explode);
		random_delay = random_range(random_delay_min,random_delay_max);
	}
	else
	{
		random_delay -= delta_time/1000000;	
	}
}
