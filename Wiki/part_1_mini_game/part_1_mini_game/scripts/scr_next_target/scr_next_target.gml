/// @scr_next_target
/// @function scr_next_target

var color_list = ds_list_create();
var res = 0;

for(var i = 0; i < instance_number(obj_ball); i++)
{
	var inst = instance_find(obj_ball,i);
	if(instance_exists(inst))
	{
		ds_list_add(color_list,inst.ball_color_index);	
	}
}
var size = ds_list_size(color_list);
if(size > 0)
{
	var rnd = irandom(size - 1);
	res = color_list[| rnd];
}

ds_list_destroy(color_list);

return res;
