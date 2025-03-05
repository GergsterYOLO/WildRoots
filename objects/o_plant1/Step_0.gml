//on click
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !(global.pagenum == 2 && global.nbvisible) ) {
	global.pagenum = 1;
	
	//update discovery tag
	var phlox_map = global.notebook[? "Alpine Phlox"];
    phlox_map[? "discovered"] = true;
	
	//open nb
    global.nbvisible = true;
}