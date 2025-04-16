x = camera_get_view_x(view_camera[0]) + x_offset;

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    room_goto(Menu);
}

//alpha
if (position_meeting(mouse_x, mouse_y, id)) {
    visible = true;
} else {
    visible = false;
}