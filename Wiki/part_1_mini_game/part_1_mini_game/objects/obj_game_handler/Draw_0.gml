/// @description Draw GUI

var _camera = camera_get_active();
var _view_x = camera_get_view_x(_camera);
var _view_y = camera_get_view_y(_camera);
var _view_w = camera_get_view_width(_camera);
var _view_h = camera_get_view_height(_camera);

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(!game_lose)
{
	var str = "Round: " + string(game_round);
}
else
{
	var str = "-- Game over! -- \n - R - to restart game";
}
draw_text_transformed(_view_x + _view_w/2,_view_y + 80,str,1,1,0);

