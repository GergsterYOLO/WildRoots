//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !global.nbvisible) {
	global.pagenum = 2;
	
	//update discovery tag
	var globemallow_map = global.notebook[? "Globemallow"];
    globemallow_map[? "discovered"] = true;
	
	//open nb
    global.nbvisible = true;
}