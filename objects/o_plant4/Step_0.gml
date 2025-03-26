//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !global.nbvisible) {
	global.pagenum = 4;
	
	//update discovery tag
	var fremont_map = global.notebook[? "Fremont"];
    fremont_map[? "discovered"] = true;
	
	//open nb
    global.nbvisible = true;
}