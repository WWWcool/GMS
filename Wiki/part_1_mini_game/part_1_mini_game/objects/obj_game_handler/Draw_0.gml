/// @description Draw GUI

var _camera = camera_get_active();
var _view_x = camera_get_view_x(_camera);
var _view_y = camera_get_view_y(_camera);
var _view_w = camera_get_view_width(_camera);
var _view_h = camera_get_view_height(_camera);

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var str = "Balls left: " + string(instance_number(obj_ball));
draw_text(_view_x + _view_w/2,_view_y + 50,str);
str = "Time left: " + string(game_time) + "s";
draw_text(_view_x + _view_w/2,_view_y + 80,str);

draw_text(_view_x + 50,_view_y + 50,"Round: work");

if(game_win || game_lose)
{
	var _alpha = draw_get_alpha();
	draw_set_alpha(gui_win_alpha);
	/// draw win message
	draw_set_color(c_black);
	draw_rectangle(_view_x,_view_y,_view_x + _view_w,_view_y + _view_h,false);
	draw_set_color(c_white);
	var str = "";
	if(game_win)
	{
		str = "You won this round! \r\n\r\n Press - R - to restart \r\n Press - Space - to continue";
	}
	else
	{
		str = "You losed this round! \r\n\r\n Press - R - to restart";
	}
	draw_text(_view_x + _view_w/2,_view_y + _view_h/2,str);
	if(gui_win_alpha < 1)gui_win_alpha += gui_win_alpha_speed;
	draw_set_alpha(_alpha);
}

