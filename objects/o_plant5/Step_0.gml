//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !global.nbvisible) {
	global.pagenum = 5;
	
	//update discovery tag
	var mountain_map = global.notebook[? "Mountain"];
    mountain_map[? "discovered"] = true;
	
	//open nb
    global.nbvisible = true;
}