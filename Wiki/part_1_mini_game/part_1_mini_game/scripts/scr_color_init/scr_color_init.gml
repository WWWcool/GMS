/// @scr_color_init
/// @function scr_color_init

// this function call itself befor any other when game starts

gml_pragma("global", "scr_color_init()");

enum EnBallColor{Red, Pink, Orange, Green, Emerald, LENGTH, NONE};

global.col_red		= make_color_rgb(225,19,29);
global.col_pink		= make_color_rgb(255,113,123);
global.col_orange	= make_color_rgb(236,176,91);
global.col_green	= make_color_rgb(172,191,0);
global.col_emerald	= make_color_rgb(0,166,160);

