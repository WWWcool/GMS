/// @description Init btn vars

enum en_btn_types{
	d_0,
	d_1,
	d_2,
	d_3,
	d_4,
	d_5,
	d_6,
	d_7,
	d_8,
	d_9,
	plus_minus,
	point,
	equally,
	plus,
	minus,
	multiply,
	divide,
	delete,
	clear,
	clear_all,
	percent,
	SQRT,
	SQR,
	reverse,
	MC,
	MR,
	MPLUS,
	MMINUS,
	MS,
	MSTACK,
	LENGTH
};

enum en_btn_states{
	idle,
	covered,
	pressed,
	disable,
	LENGTH
};

enum en_btn_style{
	color_idle,
	color_covered,
	color_pressed,
	color_disable,
	font_color_idle,
	font_color_covered,
	font_color_pressed,
	font_color_disable,
	font,
	LENGTH
};

btn_type = en_btn_types.d_0;
btn_action = noone;
btn_style = array_create(en_btn_style.LENGTH, noone);
btn_state = en_btn_states.idle;
btn_text = "";

alarm[0] = 1;
