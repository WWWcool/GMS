/// @description next round


if(game_win)
{
	if(room_exists(room + 1))
	{
		room_goto_next();	
	}
	else
	{
		room_restart();	
	}
}

if(!gui_start)
{
	gui_start = 1;
}