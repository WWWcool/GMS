/// @description Control and collision

var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var hspd = 0;
var vspd = 0;

if (move_x != 0 || move_y != 0)
{
    var dir = point_direction( 0, 0, move_x , move_y );
    hspd =  lengthdir_x(spd,dir);
    vspd =  lengthdir_y(spd,dir);
	
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
				instance_destroy();
			}
			anim_get = 1;
		}
	}
}

if(anim_get)
{
	image_angle += anim_get_rot_speed;
	
	if(image_angle >= anim_get_rot_init + 180)
	{
		image_angle = anim_get_rot_init;
		anim_get = 0;
	}
}

if(instance_number(obj_ball) == 0)
{
	x = room_width/2;
	y = room_height/2;
	anim_get = 1;
	anim_get_rot_speed *= 1.05;
}
