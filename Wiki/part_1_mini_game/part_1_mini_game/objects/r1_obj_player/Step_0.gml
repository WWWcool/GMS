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
	
	if(place_meeting(x + hspd,y,r1_obj_wall))
	{
		while(!place_meeting(x + sign(hspd),y,r1_obj_wall))
		{
			x += sign(hspd);
		}
		buf_x = x;
		hspd = 0;
	}
	
	if(place_meeting(x,y + vspd,r1_obj_wall))
	{
		while(!place_meeting(x,y + sign(vspd),r1_obj_wall))
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
	
	var inst = collision_circle(x,y,sprite_get_width(sprite_index)/2,r1_obj_ball,0,1);
	if(instance_exists(inst))
	{
		instance_destroy(inst,true);
	}

}



