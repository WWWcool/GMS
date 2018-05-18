/// @scr_get_singleton
/// @function scr_get_singleton
/// @param obj_type

var _obj_type = argument0;

if(instance_number(_obj_type) == 1)
{
	return instance_find(_obj_type,0);
}
else
{
	return noone;	
}

