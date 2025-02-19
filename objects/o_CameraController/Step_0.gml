//for cam
var cam_speed = 640; //viewport width
var smooth_factor = 0.1; //0.05-0.2 for different speed
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = 600; //keep same y as viewport

//for bg
var bg_width = room_width;
var view_width = camera_get_view_width(cam);

//bounds
var min_x = 0;
var max_x = bg_width - view_width;

//find target pos
if (!variable_global_exists("target_x")) {
    global.target_x = cam_x;
}

//smooth transition
global.target_x = clamp(global.target_x, min_x, max_x);
cam_x = lerp(cam_x, global.target_x, smooth_factor);

//update camera pos
camera_set_view_pos(cam, cam_x, cam_y);