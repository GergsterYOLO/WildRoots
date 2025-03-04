x = camera_get_view_x(view_camera[0]) + x_offset;

if (global.nbvisible) {
    //center pos
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    var screen_width = camera_get_view_width(view_camera[0]);
    var screen_height = camera_get_view_height(view_camera[0]);
    var center_x = cam_x + screen_width / 2;
    var center_y = cam_y + screen_height / 2;

    if (id == o_plant2_part1) {
        global.plant2_part1_pos = [center_x - 410, center_y];
    }
	
	//if already found
	var globemallow_map = global.notebook[? "Globemallow"];
	if (globemallow_map[? "aspects_discovered"][0]) { //1
		visible = true;
    }
	
	//on click
    if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
		visible = true;
        
        //update map
        if (object_index == o_plant2_part1) {
			globemallow_map[? "aspects_discovered"][0] = true;
        }
        //update plant entry visibility
        var entry_instance = instance_find(o_plant2_part1_entry, 0);
        if (entry_instance != noone) {
            entry_instance.visible = true;
        }
	}	
} else { //if nb is not visible destroy the object
    instance_destroy();
}