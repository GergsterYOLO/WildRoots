x = camera_get_view_x(view_camera[0]) + x_offset;

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    global.nbvisible = !global.nbvisible; // Toggle visibility
}

//hover
if (global.nbvisible) {
	sprite_index = s_notebookcloseicon;
	
//	if (position_meeting(mouse_x, mouse_y, id)) {
//		sprite_index = s_notebookcloseiconhover;
//		image_speed = 1;
//	} else {
//		sprite_index = s_notebookcloseicon;
//		image_speed = 0;
//		image_index = 0;
//	}
} else {
	sprite_index = s_notebookicon;
}