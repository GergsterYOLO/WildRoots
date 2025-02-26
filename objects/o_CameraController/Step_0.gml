//for cam
var cam_speed = 8; // Adjust speed as needed
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = 600; //keep same y as viewport

//for bg
var bg_width = room_width;
var view_width = camera_get_view_width(cam);

//bounds
var min_x = 0;
var max_x = bg_width - view_width;

//update camera position if an arrow button is being held
if (global.move_left) {
    cam_x -= cam_speed; // Move left
}
if (global.move_right) {
    cam_x += cam_speed; // Move right
}

//keep camera within bounds
cam_x = clamp(cam_x, min_x, max_x);

//update camera pos
camera_set_view_pos(cam, cam_x, cam_y);