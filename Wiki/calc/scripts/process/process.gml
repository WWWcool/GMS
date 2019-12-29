/// @process
/// @function process
/// @param string_to_calc

var _str = argument0;
var _tokens = ds_stack_create();

push_level(_tokens, 3);

_str = string_replace_all(_str, " ", "");
_str = string_replace_all(_str, "x", "*");
_str = string_replace_all(_str, ",", ".");

for(var i = 1; i <= string_length(_str); i++){
	var _val = string_char_at(_str, i);
	show_debug_message("LOG - [process] test parse char: " + _val);
}

for(var i = 1; i <= string_length(_str); i++){
	var _val = string_char_at(_str, i);
	show_debug_message("LOG - [process] parse char: " + _val);

    switch(_val){
        case "(":
            push_level(_tokens, 3);
            break;
        case ")":
            pop_level(_tokens, 3);
            break;
        case "*":
        case "/":
            pop_level(_tokens, 1);
            push_operator(_tokens, _val);
            push_level(_tokens, 1);
            break;
        case "+":
        case "-":
            if(i == 0 || (
					i > 0 && (
						string_char_at(_str, i - 1) == "(" ||
						string_char_at(_str, i - 1) == "+" ||
						string_char_at(_str, i - 1) == "/" ||
						string_char_at(_str, i - 1) == "-"
			))){
                push_operator(_tokens, _val);
            }
			else{
                pop_level(_tokens, 2);
                push_operator(_tokens, _val);
                push_level(_tokens, 2);
            }
            break;
        case " ":
            break;
        case "0": case "1": case "2": case "3": case "4": case "5": case "6": case "7": case "8": case "9":
            {
                var _curnum = "";
                while (i <= string_length(_str)) {
					_val = string_char_at(_str, i);
					_curnum += _val;
					
                    if(i + 1 > string_length(_str)){
                        break;
                    }
					
					var _next = string_char_at(_str, i + 1);
					if(string_length(string_digits(_next)) == 0 && _next != "."){
                        show_debug_message("LOG - [process] !is_real: " + string_char_at(_str, i + 1));
						break;
                    }
                    i++;
                }
                push_number(_tokens, real(_curnum));
            }
            break;
        default:
			show_debug_message("ERROR - [process] unexpected symbol: " + _val);
			return;
    }
}

pop_level(_tokens, 3);

var _size = ds_stack_size(_tokens);
if (_size == 0 || _size > 1) {
	show_debug_message("ERROR - [process] incomplete expression: " + _str);
    return noone;
}

var _res = ds_stack_top(_tokens);
ds_stack_destroy(_tokens);
return string_replace_all(string(_res[en_token_struct.data]), ".", ",");
