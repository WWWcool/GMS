/// @scr_lose
/// @function scr_lose

var inst = scr_get_singleton(obj_game_handler);
if(instance_exists(inst))
{
	inst.game_lose = 1;	
}

