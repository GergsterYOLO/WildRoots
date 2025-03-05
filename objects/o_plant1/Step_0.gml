//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !(global.pagenum == 2 && global.nbvisible) ) {
	//update discovery tag
	var phlox_map = global.notebook[? "Alpine Phlox"];
    phlox_map[? "discovered"] = true;
	
	//open nb
    global.nbvisible = true;
	
	global.pagenum = 1;
}

//alpha
if (position_meeting(mouse_x, mouse_y, id)) {
    image_alpha = 1;
} else {
    image_alpha = 0.75;
}