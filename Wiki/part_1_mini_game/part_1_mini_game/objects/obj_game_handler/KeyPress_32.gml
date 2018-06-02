/// @description Insert description here
// You can write your code in this editor

if(game_win)
{
	if(room_exists(room + 1))
	{
		room_goto_next();
	}
	else
	{
		room_goto(0);	
	}
}
