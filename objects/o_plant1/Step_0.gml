//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    //update discovery tag
	var phlox_map = global.notebook[? "Alpine Phlox"];
    phlox_map[? "discovered"] = true;

    // For example, check which part of the plant was clicked (e.g., the first part)
//    if (position_meeting(mouse_x, mouse_y, o_plant1_part1)) {
//        phlox_map[? "aspects_discovered"][0] = true;  // First part discovered
//    }
    // Repeat similar checks for other parts of the plant

	//open nb
    global.nbvisible = true;
}

//alpha
if (position_meeting(mouse_x, mouse_y, id)) {
    image_alpha = 1;
} else {
    image_alpha = 0.75;
}