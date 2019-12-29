/// @push_operator
/// @function push_operator
/// @param tokens
/// @param operator

var _tokens = argument0;
var _operator = argument1;

ds_stack_push(_tokens, create_token(en_token_type.operator, _operator));
show_debug_message("LOG - [push_operator] operator: " + _operator);
