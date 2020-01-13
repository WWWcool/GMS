/// @init_btn_state
/// @function init_btn_state
/// @param btn_type

var _type = argument0;
var _res = noone;

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
	case en_btn_types.equally:
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
	case en_btn_types.MMINUS:
	case en_btn_types.MPLUS:
	case en_btn_types.MS:
		_res = en_btn_states.idle;
	break;
	case en_btn_types.MC:
	case en_btn_types.MR:
	case en_btn_types.MSTACK:
		_res = en_btn_states.disable;
	break;
}

return _res;