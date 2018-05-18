/// @scr_get_color
/// @function scr_get_color
/// @param color_index

var color_index = argument0;
var res = c_white;

switch(color_index)
{
	case EnBallColor.Red:
		res = global.col_red;
	break;
	case EnBallColor.Pink:
		res = global.col_pink;
	break;
	case EnBallColor.Orange:
		res = global.col_orange;
	break;
	case EnBallColor.Green:
		res = global.col_green;
	break;
	case EnBallColor.Emerald:
		res = global.col_emerald;
	break;
}

return res;
