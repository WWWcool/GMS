/// @push_level
/// @function push_level
/// @param tokens
/// @param level

var _tokens = argument0;
var _level = argument1;

var _size = ds_stack_size(_tokens);
var _top = ds_stack_top(_tokens);

if (_size == 0 || _top[en_token_struct.type] != en_token_type.level) {
	ds_stack_push(_tokens, create_token(en_token_type.level, _level));
} else {
    var _popped = ds_stack_pop(_tokens);
	_popped[@ en_token_struct.data] += _level;
	ds_stack_push(_tokens, _popped);
}
show_debug_message("LOG - [push_level] level: " + string(_level));
