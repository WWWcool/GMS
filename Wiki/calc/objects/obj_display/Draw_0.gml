/// @description Draw display
draw_set_halign(fa_right);
draw_set_font(f_bold_H1);

var _col = global.c_ch_white;
draw_text_color(x, y, global.calc_number, _col, _col, _col, _col, 1);

var _shift_y = string_height("1234567890")*1.2/2;
draw_set_font(f_secondary);
_shift_y += string_height("1234567890")/2;
_col = global.c_ch_alt_low;
draw_text_color(x, y - _shift_y, global.calc_expression, _col, _col, _col, _col, 1);
