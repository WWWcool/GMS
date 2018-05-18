/// @scr_get_target_index
/// @function scr_get_target_index

var res = EnBallColor.NONE;

var inst = scr_get_singleton(obj_game_handler)
if(instance_exists(inst))
{
	res = inst.game_target_index;
}

return res;
