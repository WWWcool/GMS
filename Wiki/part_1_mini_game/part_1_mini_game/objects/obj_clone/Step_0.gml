/// @description Insert description here
// You can write your code in this editor

if(target_x != x || target_y != y)
{
	target_x = clamp(target_x,sprite_width/2,room_width/2 - sprite_width/2);
	target_y = clamp(target_y,sprite_height/2,room_height - sprite_height/2);
	x = lerp(x,target_x,0.3);
	y = lerp(y,target_y,0.3);
}

var inst = collision_circle(x,y,sprite_width/2,obj_target,false,true);
if(instance_exists(inst))
{
	with(inst)
	{
		instance_destroy();	
	}
}
