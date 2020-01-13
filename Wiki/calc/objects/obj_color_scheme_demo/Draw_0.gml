/// @description draw color grid
var raw = 0;
var col = 0;
for(var i = 0; i < array_length_1d(colors); i++){
	var xx = grid_shift + col*side*space;
	var yy = grid_shift + raw*side*space;

	draw_rectangle_color(xx, yy, xx + side, yy + side, colors[i], colors[i], colors[i], colors[i], false);
	col++;
	if((i + 1) % grid_width == 0){
		col = 0;
		raw++;
	}
}