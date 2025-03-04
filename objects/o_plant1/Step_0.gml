//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    //update discovery tag
	var phlox_map = global.notebook[? "Alpine Phlox"];
    phlox_map[? "discovered"] = true;

	//open nb
    global.nbvisible = true;
}

//alpha
if (position_meeting(mouse_x, mouse_y, id)) {
    image_alpha = 1;
} else {
    image_alpha = 0.75;
}