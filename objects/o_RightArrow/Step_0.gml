x = camera_get_view_x(view_camera[0]) + x_offset;

if (global.nbvisible) {
	visible = false;
} else {
	visible = true;
}

//hover
if (position_meeting(mouse_x, mouse_y, id)) {
    sprite_index = s_rightarrowhover;
    image_speed = 1;
} else {
    sprite_index = s_rightarrow;
    image_speed = 0;
    image_index = 0;
}
