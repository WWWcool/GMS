/// @add_or_perform_action
/// @function add_or_perform_action
/// @param btn_type

var _type = argument0;

if(_type >= en_btn_types.plus && _type <= en_btn_types.reverse){
	switch(_type){
		case en_btn_types.plus:
		case en_btn_types.minus:
		case en_btn_types.multiply:
		case en_btn_types.divide:
			if(global.calc_no_operation){
				global.calc_no_operation = false;
				global.calc_expression = global.calc_expression_init;
			}
			var _part = " " + btn_text + " ";
			if(!already_calculated()){
				global.calc_expression += global.calc_number + _part;
			}
			else{
				global.calc_expression = global.calc_number + _part;
			}
			global.calc_last_expression_part = _part;
			global.calc_last_number = global.calc_number;
			global.calc_new_number = true;
		break;
		case en_btn_types.delete:
			global.calc_number = string_delete(global.calc_number, string_length(global.calc_number), 1);
			if(string_length(global.calc_number) == 0){
				global.calc_number = "0";
			}
			if(string_length(global.calc_number) == 1 && global.calc_number == "-"){
				global.calc_number = "0";
			}
		break;
		case en_btn_types.clear:
			global.calc_number = global.calc_number_init;
		break;
		case en_btn_types.clear_all:
			global.calc_number = global.calc_number_init;
			global.calc_expression = global.calc_expression_init;
			global.calc_last_expression_part = global.calc_expression_init;
			global.calc_last_number = global.calc_number_init;
			global.calc_new_number = true;
			global.calc_no_operation = true;
		break;
		case en_btn_types.percent:
			var _len = string_length(global.calc_last_expression_part);
			if(_len > 0 && _len <= 3 && string_length(global.calc_last_number) > 0){
				switch(global.calc_last_expression_part){
					case " + ":
					case " - ":
						global.calc_new_number = true;
						global.calc_number = string(real(global.calc_last_number)*real(global.calc_number)/100);
					break;
					case " x ":
					case " / ":
						global.calc_new_number = true;
						global.calc_number = string(real(global.calc_number)/100);
					break;
				}
			}
		break;
		case en_btn_types.SQRT:
			global.calc_new_number = true;
			global.calc_number = string(sqrt(real(global.calc_number)));
		break;
		case en_btn_types.SQR:
			global.calc_new_number = true;
			global.calc_number = string(sqr(real(global.calc_number)));
		break;
		case en_btn_types.reverse:	
			global.calc_new_number = true;
			global.calc_number = string(1/(real(global.calc_number)));
		break;
	}
}
else{
	show_debug_message("ERROR - [add_or_perform_action] unknown btn type:" + string(_type));
}
