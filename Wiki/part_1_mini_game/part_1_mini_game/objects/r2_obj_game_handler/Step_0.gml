/// @description Game conditions


// Check win game
if(game_win != 1 && game_lose != 1)
{
	if(game_balls_prev == 0)
	{
		game_balls_prev = instance_number(r2_obj_ball);
	}
	else
	{
		var balls_count  = instance_number(r2_obj_ball);
	
		if(game_balls_prev != balls_count)
		{
			game_balls_prev = balls_count;
			game_time += game_time_add;
		}
		if(balls_count == 0)
		{
			game_win = 1;	
		}
	}
	if(game_time > 0)
	{
		game_time -= delta_time/1000000;
		if(game_time <= 0)
		{
			game_lose = 1;	
		}
	}
}



