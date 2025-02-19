if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    notebook_visible = !notebook_visible; // Toggle visibility
}

//alpha
if (position_meeting(mouse_x, mouse_y, id)) {
    image_alpha = 1;
} else {
    image_alpha = 0.75;
}