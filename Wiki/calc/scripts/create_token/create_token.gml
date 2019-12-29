/// @create_token
/// @function create_token
/// @param type
/// @param data

var _type = argument0;
var _data = argument1;

enum en_token_struct{
	type,
	data,
	LENGTH
};

enum en_token_type{
	level,
	operator,
	number,
	LENGTH
};

var _token = array_create(2, noone);
_token[@ en_token_struct.type] = _type;
_token[@ en_token_struct.data] = _data;

return _token;
