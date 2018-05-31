/// @description Game conditions

// Check win game
if(game_win != 1 && game_lose != 1 && game_start)
{
	if(game_balls_prev == 0)
	{
		game_balls_prev = instance_number(obj_ball);
		game_target_index = scr_next_target();
	}
	else
	{
		var balls_count  = instance_number(obj_ball);
	
		if(game_balls_prev != balls_count)
		{
			game_balls_prev = balls_count;
			game_time += game_time_add;
			game_target_index = scr_next_target();
			gui_anim_time = gui_anim_time_max;
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
			game_time = 0;
		}
	}
}



