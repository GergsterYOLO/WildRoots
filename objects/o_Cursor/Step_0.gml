x = mouse_x;
y = mouse_y;

if (!global.nbvisible) {
	if (mouse_check_button_pressed(mb_left)) {
		if (!instance_exists(o_clickfeedback)) instance_create_layer(o_Cursor.x -125, o_Cursor.y - 140, "Instances", o_clickfeedback);
	}
}

if (global.nbvisible) {
	if (instance_exists(o_clickfeedback)) instance_destroy(o_clickfeedback);
}
