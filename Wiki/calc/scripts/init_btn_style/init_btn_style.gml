/// @init_btn_style
/// @function init_btn_style
/// @param btn_type
/// @param [btn_style]

var _type = argument0;
var _style = argument1;

if(!is_array(_style))
	return;

switch(_type){
	case en_btn_types.d_0:
	case en_btn_types.d_1:
	case en_btn_types.d_2:
	case en_btn_types.d_3:
	case en_btn_types.d_4:
	case en_btn_types.d_5:
	case en_btn_types.d_6:
	case en_btn_types.d_7:
	case en_btn_types.d_8:
	case en_btn_types.d_9:
	case en_btn_types.plus_minus:
	case en_btn_types.point:
		_style[@ en_btn_style.color_idle] = global.c_ch_high;
		_style[@ en_btn_style.color_covered] = global.c_ch_alt_low;
		_style[@ en_btn_style.color_pressed] = global.c_ch_high;
		_style[@ en_btn_style.color_disable] = global.c_ch_black_high;
		_style[@ en_btn_style.font] = f_bold;
		_style[@ en_btn_style.font_color_idle] = global.c_ch_white;
		_style[@ en_btn_style.font_color_covered] = global.c_ch_white;
		_style[@ en_btn_style.font_color_pressed] = global.c_ch_white;
		_style[@ en_btn_style.font_color_disable] = global.c_ch_high;
		
	break;
	case en_btn_types.equally:
		_style[@ en_btn_style.color_idle] = global.c_ch_special_medium;
		_style[@ en_btn_style.color_covered] = global.c_ch_special_high;
		_style[@ en_btn_style.color_pressed] = global.c_ch_special_medium;
		_style[@ en_btn_style.color_disable] = global.c_ch_special_low;
		_style[@ en_btn_style.font] = f_common;
		_style[@ en_btn_style.font_color_idle] = global.c_ch_white;
		_style[@ en_btn_style.font_color_covered] = global.c_ch_white;
		_style[@ en_btn_style.font_color_pressed] = global.c_ch_white;
		_style[@ en_btn_style.font_color_disable] = global.c_ch_white;
	break;
	case en_btn_types.plus:
	case en_btn_types.minus:
	case en_btn_types.multiply:
	case en_btn_types.divide:
	case en_btn_types.delete:
	case en_btn_types.clear:
	case en_btn_types.clear_all:
	case en_btn_types.percent:
	case en_btn_types.SQRT:
	case en_btn_types.SQR:
	case en_btn_types.reverse:
		_style[@ en_btn_style.color_idle] = global.c_ch_medium;
		_style[@ en_btn_style.color_covered] = global.c_ch_alt_low;
		_style[@ en_btn_style.color_pressed] = global.c_ch_high;
		_style[@ en_btn_style.color_disable] = global.c_ch_black_high;
		_style[@ en_btn_style.font] = f_common;
		_style[@ en_btn_style.font_color_idle] = global.c_ch_white;
		_style[@ en_btn_style.font_color_covered] = global.c_ch_white;
		_style[@ en_btn_style.font_color_pressed] = global.c_ch_white;
		_style[@ en_btn_style.font_color_disable] = global.c_ch_high;
	break;
	case en_btn_types.MC:
	case en_btn_types.MMINUS:
	case en_btn_types.MPLUS:
	case en_btn_types.MR:
	case en_btn_types.MS:
	case en_btn_types.MSTACK:
		_style[@ en_btn_style.color_idle] = global.c_ch_medium;
		_style[@ en_btn_style.color_covered] = global.c_ch_alt_low;
		_style[@ en_btn_style.color_pressed] = global.c_ch_high;
		_style[@ en_btn_style.color_disable] = global.c_ch_black_high;
		_style[@ en_btn_style.font] = f_secondary;
		_style[@ en_btn_style.font_color_idle] = global.c_ch_white;
		_style[@ en_btn_style.font_color_covered] = global.c_ch_white;
		_style[@ en_btn_style.font_color_pressed] = global.c_ch_white;
		_style[@ en_btn_style.font_color_disable] = global.c_ch_high;
	break;
}