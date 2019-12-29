/// @global_init
/// @function global_init

// this function call itself befor any other when game starts

gml_pragma("global", "global_init()");

// system init

global.c_ch_low = make_color_hsv(0, 0, 9);
global.c_ch_medium_low = make_color_hsv(0, 0, 17);
global.c_ch_medium = make_color_hsv(0, 0, 22);
global.c_ch_high = make_color_hsv(0, 0, 46);
global.c_ch_alt_low = make_color_hsv(0, 0, 95);
global.c_ch_disable_low = make_color_hsv(0, 0, 52);
global.c_ch_disable_high = make_color_hsv(0, 0, 20);
global.c_ch_black_high = c_black;
global.c_ch_white = c_white;

global.c_ch_special_low = make_color_rgb(0, 50, 102);
global.c_ch_special_medium = make_color_rgb(0, 72, 129);
global.c_ch_special_high = make_color_rgb(0, 108, 193);

show_debug_message("LOG - [global_init] init -- OK!");

// calc init

global.calc_number_init = "0";
global.calc_number = global.calc_number_init;
global.calc_expression_init = "";
global.calc_expression = global.calc_expression_init;
global.calc_last_expression_part = global.calc_expression_init;
global.calc_last_number = global.calc_number_init;

global.calc_new_number = true;
global.calc_no_operation = true;

// memory init

global.memory_number_init = "";
global.memory_number = global.memory_number_init;
