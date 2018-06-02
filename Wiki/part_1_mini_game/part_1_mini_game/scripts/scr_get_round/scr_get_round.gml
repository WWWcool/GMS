/// @scr_get_round
/// @function scr_get_round

var inst = scr_get_singleton(obj_game_handler);
if(instance_exists(inst))
{
	return inst.game_round;	
}

return 1;
