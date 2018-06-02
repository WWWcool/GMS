/// @description Game conditions

// Check win game

if(instance_number(obj_target) == 0 && !game_lose)
{
	game_round++;
	global.game_round = game_round;
	repeat(game_round)
	{
		instance_create_layer(irandom_range(100,room_width - 100),irandom_range(50,room_height),"Instances",obj_target);
	}
}




