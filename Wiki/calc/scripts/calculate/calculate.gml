/// @calculate
/// @function calculate
/// @param btn_type

var _type = argument0;

if(_type == en_btn_types.equally){
	global.calc_last_number = global.calc_number_init;
	if(global.calc_no_operation){
		global.calc_expression = global.calc_number + " = ";
		return;
	}
	if(!already_calculated()){
		global.calc_last_expression_part += global.calc_number;
		global.calc_expression += global.calc_number;
		global.calc_number = process(global.calc_expression);
		global.calc_expression += " = ";
	}
	else{
		global.calc_expression = global.calc_number + global.calc_last_expression_part;
		global.calc_number = process(global.calc_expression);
		global.calc_expression += " = ";
	}
	global.calc_new_number = true;
}
else{
	show_debug_message("ERROR - [calculate] unknown btn type:" + string(_type));
}

// test region

//var _test = get_string("enter expression", "3*2");;
//show_debug_message("try calc: " + _test);
//show_debug_message("result: " + string(process(_test)));
