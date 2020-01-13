/// @check_str_length
/// @function check_str_length
/// @param string

var _str = argument0;

draw_set_font(f_bold_H1);
var _w = string_width("0");
var _max_w = (obj_display.x div _w)*_w;

return string_width(_str) < _max_w;
