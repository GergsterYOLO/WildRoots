if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    room_goto(Level1);
}

if (position_meeting(mouse_x, mouse_y, id)) {
    visible = true;
} else {
    visible = false;
}