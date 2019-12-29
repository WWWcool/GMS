/// @add_symbol
/// @function add_symbol
/// @param btn_type

var _type = argument0;

if(!check_str_length(global.calc_number + "0") && _type != en_btn_types.plus_minus && !global.calc_new_number)
{
	return;	
}

if(_type <= en_btn_types.d_9){
	if(string_length(global.calc_number) == 1 && global.calc_number == "0" || global.calc_new_number){
		global.calc_number = "";
		global.calc_new_number = false;
	}
	global.calc_number += string(_type);
}
else{
	switch(_type){
		case en_btn_types.plus_minus:
			if(string_length(global.calc_number) == 1 && global.calc_number == "0"){
				return;
			}
			if(string_char_at(global.calc_number, 1) == "-"){
				global.calc_number = string_delete(global.calc_number, 1, 1);
			}
			else{
				global.calc_number = "-" + global.calc_number;
			}
		break;
		case en_btn_types.point:
			if(string_pos(",", global.calc_number) == 0){
				global.calc_number += ",";
				global.calc_new_number = false;
			}
			show_debug_message("LOG - [add_symbol] try add point to number:" + string(global.calc_number));
		break;
		default:
			show_debug_message("ERROR - [add_symbol] unknown btn type:" + string(_type));
	}
}
