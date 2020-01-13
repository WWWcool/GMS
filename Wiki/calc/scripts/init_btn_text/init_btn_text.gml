/// @init_btn_text
/// @function init_btn_text
/// @param btn_type

var _type = argument0;
var _res = "unknown";

switch(_type){
	case en_btn_types.d_0: return "0";
	case en_btn_types.d_1: return "1";
	case en_btn_types.d_2: return "2";
	case en_btn_types.d_3: return "3";
	case en_btn_types.d_4: return "4";
	case en_btn_types.d_5: return "5";
	case en_btn_types.d_6: return "6";
	case en_btn_types.d_7: return "7";
	case en_btn_types.d_8: return "8";
	case en_btn_types.d_9: return "9";
	case en_btn_types.plus_minus: return "+/-";
	case en_btn_types.point: return ",";
	case en_btn_types.equally: return "=";
	case en_btn_types.plus: return "+";
	case en_btn_types.minus: return "-";
	case en_btn_types.multiply: return "x";
	case en_btn_types.divide: return "/";
	case en_btn_types.delete: return "<";
	case en_btn_types.clear: return "CE";
	case en_btn_types.clear_all: return "C";
	case en_btn_types.percent: return "%";
	case en_btn_types.SQRT: return "sqrt";
	case en_btn_types.SQR: return "sqr";
	case en_btn_types.reverse: return "1/x";
	case en_btn_types.MC: return "MC";
	case en_btn_types.MMINUS: return "M-";
	case en_btn_types.MPLUS: return "M+";
	case en_btn_types.MR: return "MR";
	case en_btn_types.MS: return "MS";
	case en_btn_types.MSTACK: return "M";
}

return _res;
