/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("E")))
{
	need_disconnect = 1;	
}
else
{
	need_disconnect = 0;	
}

var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var hspd = 0;
var vspd = 0;

if (move_x != 0 || move_y != 0)
{
    var dir = point_direction(0, 0, move_x, move_y);
    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);

    if (place_meeting(x + hspd, y, obj_wall))
    {
        while (!place_meeting(x + sign(hspd), y, obj_wall))
        {
            x += sign(hspd);
        }
        hspd = 0;
    }

    if (place_meeting(x, y + vspd, obj_wall))
    {
        while (!place_meeting(x, y + sign(vspd), obj_wall))
        {
            y += sign(vspd);
        }
        vspd = 0;
    }

    x += hspd;
    y += vspd;
	x = clamp(x,room_width/2 + sprite_width/2,room_width - sprite_width/2);
	y = clamp(y,sprite_height/2,room_height - sprite_height/2);
}

var delta_x = 0;
var delta_y = 0;

if(prev_x != x || prev_y != y)
{
	delta_x = x - prev_x;
	delta_y = y - prev_y;
	prev_x = x;
	prev_y = y;
}

if(!need_disconnect)
{
	if(instance_exists(connect_inst))
	{
		connect_inst.target_x -= delta_x;
		connect_inst.target_y += delta_y;
	}
	else
	{
		var inst = collision_line(x,y,x - connect_distanse,y,obj_clone,false,true);
		if(instance_exists(inst))
		{
			connect_inst = inst;
		}
	}
}
else
{
	connect_inst = noone;
}
