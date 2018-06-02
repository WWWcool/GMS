/// @description Draw GUI

var _camera = camera_get_active();
var _view_x = camera_get_view_x(_camera);
var _view_y = camera_get_view_y(_camera);
var _view_w = camera_get_view_width(_camera);
var _view_h = camera_get_view_height(_camera);

draw_set_font(f_main);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(!game_win)
{
	var str = "Destroy target!\n Controls \n WASD - move \n - E - release \n - R - restart";
}
else
{
	var str = "-- Round win! -- \n - Space -> next round \n - R - to restart";
}

draw_text_transformed(_view_x + _view_w/4,_view_y + 50,str,1,1,0);


draw_line(_view_w/2,0,_view_w/2,_view_h);

