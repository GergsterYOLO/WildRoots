x = camera_get_view_x(view_camera[0]) + x_offset;

if (global.nbvisible) {
	visible = true;
	
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
		global.tryturnleft = true;
	}
} else {
	visible = false;
}

//alpha
if (position_meeting(mouse_x, mouse_y, id)) {
    image_alpha = 1;
} else {
    image_alpha = 0.80;
}