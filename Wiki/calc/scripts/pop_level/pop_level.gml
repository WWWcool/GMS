/// @pop_level
/// @function pop_level
/// @param tokens
/// @param level

var _tokens = argument0;
var _level = argument1;

var _size = ds_stack_size(_tokens);
var _top = ds_stack_top(_tokens);

if(_level == 0){
	if (_size > 3) {
		ds_stack_push(_tokens, calc(_tokens));
    }
    return;	
}

if(
	_size == 0 || 
	_top[en_token_struct.type] == en_token_type.level || 
	_top[en_token_struct.type] == en_token_type.operator
){
	show_debug_message("ERROR - [pop_level] unexpected level, case: 1");
}
else{
	if(_size > 1){
		var _pre_top_1 = ds_stack_pop(_tokens);
		var _pre_top_2 = ds_stack_pop(_tokens);
		if(_pre_top_2[en_token_struct.type] == en_token_type.level){
			if(_pre_top_2[en_token_struct.data] > _level){
	            _pre_top_2[@ en_token_struct.data] -= _level;
				ds_stack_push(_tokens, _pre_top_2);
				ds_stack_push(_tokens, _pre_top_1);
	        }
			else{
	            var _delta = _level - _pre_top_2[en_token_struct.data];
				ds_stack_push(_tokens, _pre_top_1);
	            pop_level(_tokens, _delta);
	        }
		}
		else{
			ds_stack_push(_tokens, _pre_top_2);
			ds_stack_push(_tokens, _pre_top_1);
			if(_size > 3){
				var _s1 = calc(_tokens);
				var _new_top = ds_stack_top(_tokens);
				
				if(_new_top[en_token_struct.type] == en_token_type.level){
		            if(_new_top[en_token_struct.data] > _level){
						var _popped = ds_stack_pop(_tokens);
						_popped[@ en_token_struct.data] -= _level;
						ds_stack_push(_tokens, _popped);
						ds_stack_push(_tokens, _s1);
		            }
					else{
		                var _delta = _level - _new_top[en_token_struct.data];
						ds_stack_pop(_tokens);
		                ds_stack_push(_tokens, _s1);
		                pop_level(_tokens, _delta);
		            }
		        } 
				else{
					if(_new_top[en_token_struct.type] == en_token_type.operator){
			            ds_stack_push(_tokens, _s1);
			            pop_level(_tokens, _level);
			        }
					else{
			            show_debug_message("ERROR - [pop_level] unexpected level, case: 4");
			        }
				}
			}
			else{
				show_debug_message("ERROR - [pop_level] unexpected level, case: 3");
			}
		}
	}
	else{
		show_debug_message("ERROR - [pop_level] unexpected level, case: 2");
	}
}
