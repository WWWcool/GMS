/// @push_number
/// @function push_number
/// @param tokens
/// @param number

var _tokens = argument0;
var _number = argument1;

var _size = ds_stack_size(_tokens);
var _top = ds_stack_top(_tokens);

show_debug_message("LOG - [push_number] number: " + string(_number));

if(_size == 0 || _top[en_token_struct.type] == en_token_type.level){
    ds_stack_push(_tokens, create_token(en_token_type.number, _number));
	return;
}

if(_top[en_token_struct.type] == en_token_type.operator && _size > 1){
	var _pre_top_1 = ds_stack_pop(_tokens);
	var _pre_top_2 = ds_stack_pop(_tokens);
	if(_pre_top_2[en_token_struct.type] == en_token_type.number){
		ds_stack_push(_tokens, _pre_top_2);
		ds_stack_push(_tokens, _pre_top_1);
		ds_stack_push(_tokens, create_token(en_token_type.number, _number));
		return;
	}
	else{
		ds_stack_push(_tokens, _pre_top_2);
		ds_stack_push(_tokens, _pre_top_1);
	}
}

if(_top[en_token_struct.type] == en_token_type.operator && _size == 1){
	if(_top[en_token_struct.data] != "-") {
		show_debug_message("ERROR - [push_number] unexpected operator, case: 1");
		return;
    }
    _number = -1*_number;
    ds_stack_pop(_tokens);
    ds_stack_push(_tokens, create_token(en_token_type.number, _number));
	show_debug_message("LOG - [push_number] sign number: " + string(_number));
	return;
}

if(_top[en_token_struct.type] == en_token_type.operator && _size > 1){
	var _pre_top_1 = ds_stack_pop(_tokens);
	var _pre_top_2 = ds_stack_pop(_tokens);
	if(_pre_top_2[en_token_struct.type] == en_token_type.level){
		if(_top[en_token_struct.data] != "-") {
			show_debug_message("ERROR - [push_number] unexpected operator, case: 2");
			ds_stack_push(_tokens, _pre_top_2);
			ds_stack_push(_tokens, _pre_top_1);
			return;
	    }
	    _number = -1*_number;
		ds_stack_push(_tokens, _pre_top_2);
	    ds_stack_push(_tokens, create_token(en_token_type.number, _number));
		show_debug_message("LOG - [push_number] sign number: " + string(_number));
		return;
	}
}

show_debug_message("ERROR - [push_number] unexpected number");
