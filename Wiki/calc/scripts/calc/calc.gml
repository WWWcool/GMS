/// @calc
/// @function calc
/// @param tokens

var _tokens = argument0;

var _s2 = ds_stack_pop(_tokens);
var _op = ds_stack_pop(_tokens);
var _s1 = ds_stack_pop(_tokens);

if(
	_s1[en_token_struct.type] != en_token_type.number || 
	_op[en_token_struct.type] != en_token_type.operator || 
	_s2[en_token_struct.type] != en_token_type.number
){
	show_debug_message("ERROR - [calc] invalid operation");
}

switch (_op[en_token_struct.data]) {
    case "+":
        _s1[@ en_token_struct.data] += _s2[en_token_struct.data];
        break;
    case "-":
        _s1[@ en_token_struct.data] -= _s2[en_token_struct.data];
        break;
    case "*":
        _s1[@ en_token_struct.data] *= _s2[en_token_struct.data];
        break;
    case "/":
        _s1[@ en_token_struct.data] /= _s2[en_token_struct.data];
        break;
    default:
		show_debug_message("ERROR - [calc] unknonw operation: " + string(_op[en_token_struct.data]));
}

return _s1;