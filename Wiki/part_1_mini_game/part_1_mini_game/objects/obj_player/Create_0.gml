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
