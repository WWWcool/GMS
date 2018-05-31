/// @description Draw GUI

var _camera = camera_get_active();
var _view_x = camera_get_view_x(_camera);
var _view_y = camera_get_view_y(_camera);
var _view_w = camera_get_view_width(_camera);
var _view_h = camera_get_view_height(_camera);

draw_set_color(c_red);
draw_set_font(f_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(game_start)
{
	var str = "Balls left: " + string(instance_number(obj_ball));
	draw_text(_view_x + _view_w/2,_view_y + 50,str);
	str = "Time left: " + string(game_time) + "s";
	draw_text_transformed(_view_x + _view_w/2,_view_y + 80,str,1 + gui_anim_time,1 + gui_anim_time,0);

	draw_text(_view_x + 50,_view_y + 50,"Round: work");

	// draw target
	var text_x = _view_x + _view_w/2 + 150;
	var text_y = _view_y + 60;
	draw_text(text_x,text_y,"Target");
	draw_sprite_ext(spr_ball,0,text_x + 20 + sprite_get_width(spr_ball),text_y,
						1 + gui_anim_target,1 + gui_anim_target,0,scr_get_color(game_target_index),1);

	if(gui_anim_target_dir)
	{
		gui_anim_target += gui_anim_target_speed;
		if(gui_anim_target >= gui_anim_target_max)
		{
			gui_anim_target_dir = 0;
		}
	}
	else
	{
		gui_anim_target -= gui_anim_target_speed;
		if(gui_anim_target <= gui_anim_target_min)
		{
			gui_anim_target_dir = 1;
		}
	}
	
	if(gui_anim_time > 0)
	{
		gui_anim_time -= gui_anim_time_speed;	
	}
	
	if(game_win || game_lose)
	{
		var str = "";
		if(game_win)
		{
			str = "You won this round! \n\n Press - R - or - Space - to restart";
		}
		else
		{
			str = "You losed this round! \n\n Press - R - to restart";
		}
		scr_draw_msg(str,gui_win_alpha,1,gui_win_alpha_speed/10);
	}
}
else
{
	var str = "Game rules:\n Collect target balls\n\n Controls: \n - WASD - to move \n\n Press - Space - to start game";
	if(!gui_start)
	{
		scr_draw_msg(str,gui_win_alpha,1,gui_win_alpha_speed);
	}
	else
	{
		scr_draw_msg(str,gui_win_alpha,0,-gui_win_alpha_speed);
		if(gui_win_alpha[0] <= 0)
		{
			game_start = 1;
		}
	}
}

