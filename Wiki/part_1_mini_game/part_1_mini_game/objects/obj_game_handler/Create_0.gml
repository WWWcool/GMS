/// @description game vars

randomize();

game_start = global.rules;
game_win = 0;
game_lose = 0;

game_time_init = 5;
game_time = game_time_init;
game_time_add = 3;

game_balls_prev = 0;

game_target_index = EnBallColor.NONE;

/// draw gui vars

gui_win_alpha[0] = !game_start;
gui_win_alpha_speed = 0.1;
gui_start = 0;

gui_anim_target = 0;
gui_anim_target_speed = 0.01;
gui_anim_target_dir = 0;
gui_anim_target_min = 0;
gui_anim_target_max = 0.2;

gui_anim_time = 0;
gui_anim_time_speed = 0.005;
gui_anim_time_max = 0.7;

gui_pos_delta_init = -150;
gui_pos_delta = gui_pos_delta_init;


