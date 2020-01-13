/// @description init
space = 1.2;
side = 150;
colors = array_create(9, c_red);
var index = 0;

colors[index++] = global.c_ch_low;
colors[index++] = global.c_ch_medium_low;
colors[index++] = global.c_ch_medium;
colors[index++] = global.c_ch_high;
colors[index++] = global.c_ch_alt_low;
colors[index++] = global.c_ch_disable_low;
colors[index++] = global.c_ch_disable_high;
colors[index++] = global.c_ch_black_high;
colors[index++] = global.c_ch_white;

var side_with_space = space*side;
var space_size = side_with_space - side;

grid_width = round(room_width/side_with_space) - 1;
grid_shift = (room_width - grid_width*side_with_space + space_size)/2;
