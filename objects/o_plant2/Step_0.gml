//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !(global.pagenum == 1 && global.nbvisible) ) {
	global.pagenum = 2;
	
	//update discovery tag
	var globemallow_map = global.notebook[? "Globemallow"];
    globemallow_map[? "discovered"] = true;
	
	//open nb
    global.nbvisible = true;
}

//alpha
if (position_meeting(mouse_x, mouse_y, id)) {
    image_alpha = 1;
} else {
    image_alpha = 0.75;
}