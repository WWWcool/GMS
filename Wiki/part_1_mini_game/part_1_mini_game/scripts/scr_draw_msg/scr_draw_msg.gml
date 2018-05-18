/// @scr_draw_msg
/// @function scr_draw_msg
/// @param msg
/// @param alpha[]
/// @param target_alpha
/// @param alpha_speed

var msg = argument0;
var alpha = argument1;
var target_alpha = argument2;
var alpha_speed = argument3;

if(is_array(alpha))
{
	var _camera = camera_get_active();
	var _view_x = camera_get_view_x(_camera);
	var _view_y = camera_get_view_y(_camera);
	var _view_w = camera_get_view_width(_camera);
	var _view_h = camera_get_view_height(_camera);
	
	var tmp_alpha = draw_get_alpha();
	draw_set_alpha(alpha[0]);
	/// draw win message
	draw_set_color(c_black);
	draw_rectangle(_view_x,_view_y,_view_x + _view_w,_view_y + _view_h,false);
	draw_set_color(c_white);

	draw_text(_view_x + _view_w/2,_view_y + _view_h/2,msg);
	if(alpha[0] != target_alpha)alpha[@ 0] += alpha_speed;
	draw_set_alpha(tmp_alpha);
}