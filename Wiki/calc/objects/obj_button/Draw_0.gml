/// @description Draw btn

draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y,
	image_xscale,
	image_yscale,
	image_angle,
	btn_style[en_btn_style.color_idle + btn_state],
	1
);

draw_set_font(btn_style[en_btn_style.font]);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var w = sprite_width;
var h = sprite_height;
var col = btn_style[en_btn_style.font_color_idle + btn_state];

draw_text_color(x + w/2, y + h/2, btn_text, col, col, col, col, 1);
