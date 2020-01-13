/// @memory
/// @function memory
/// @param btn_type

var _type = argument0;

if(_type >= en_btn_types.MC && _type <= en_btn_types.MSTACK){
	switch(_type){
		case en_btn_types.MC:
			global.memory_number = global.memory_number_init;
			btn_disable(en_btn_types.MC);
			btn_disable(en_btn_types.MR);
			btn_disable(en_btn_types.MSTACK);
		break;
		case en_btn_types.MMINUS:
			global.memory_number = process(global.memory_number + "-" + global.calc_number);
		break;
		case en_btn_types.MPLUS:
			global.memory_number = process(global.memory_number + "+" + global.calc_number);
		break;
		case en_btn_types.MR:
			global.calc_number = global.memory_number;
		break;
		case en_btn_types.MS:
			global.memory_number = global.calc_number;
			add_or_perform_action(en_btn_types.clear_all);
			memory(en_btn_types.MR);
			btn_enable(en_btn_types.MC);
			btn_enable(en_btn_types.MR);
			btn_enable(en_btn_types.MSTACK);
		break;
		case en_btn_types.MSTACK:
			show_message("You have " + global.memory_number + " in memory.");
		break;
	}
}
else{
	show_debug_message("ERROR - [memory] unknown btn type:" + string(_type));
}
