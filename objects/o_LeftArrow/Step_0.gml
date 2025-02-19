x = camera_get_view_x(view_camera[0]) + x_offset;

//alpha
if (position_meeting(mouse_x, mouse_y, id)) {
    image_alpha = 1;
} else {
    image_alpha = 0.75;
}