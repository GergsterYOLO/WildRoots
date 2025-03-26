//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !global.nbvisible) {
	global.pagenum = 3;
	
	//update discovery tag
	var palmers_map = global.notebook[? "Palmers"];
    palmers_map[? "discovered"] = true;
	
	//open nb
    global.nbvisible = true;
}