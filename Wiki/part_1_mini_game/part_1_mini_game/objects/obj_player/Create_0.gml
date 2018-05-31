/// @description Init

buf_x = x;
buf_y = y;
spd = 8;

anim_get = 0;
anim_get_rot_init = 0;
anim_get_rot_speed = 10;

// camera control
show_debug_message("active camera id = " + string(camera_get_active()))
//camera_set_view_target(view_camera[0],id);

random_delay_min = 0.1;
random_delay_max = 0.5;
random_delay = 0;

track_x = 0;
track_y = 0;
track_delta = 16;

stop_move = 0;
