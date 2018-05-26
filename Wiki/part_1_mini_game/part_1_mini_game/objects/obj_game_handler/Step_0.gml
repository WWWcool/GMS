/// @description Game conditions

// Check win game

if(instance_number(obj_target) == 0 && !game_lose)
{
	game_round++;
	repeat(game_round)
	{
		instance_create_layer(irandom(room_width),irandom(room_height),"Instances",obj_target);
	}
}




