//if visible, display pages
if (global.nbvisible) {
    //center pos for nb
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    var screen_width = camera_get_view_width(view_camera[0]);
    var screen_height = camera_get_view_height(view_camera[0]);
    var center_x = cam_x + screen_width / 2;
    var center_y = cam_y + screen_height / 2;
	
	//notebook BG
	if (!instance_exists(o_NotebookBGPlaceholder)) {
		instance_create_layer(center_x - 537, center_y - 22 - sprite_get_height(s_NotebookBGPlaceholder) / 2, "Instances", o_NotebookBGPlaceholder);
	}

    //destroy non-relevant pages
    if (global.pagenum != 1) {
        if (instance_exists(o_page1_sketch)) instance_destroy(o_page1_sketch);
        if (instance_exists(o_page1_colored)) instance_destroy(o_page1_colored);
        if (instance_exists(o_page1_words)) instance_destroy(o_page1_words);
		
		if (instance_exists(o_plant1_part1)) instance_destroy(o_plant1_part1);
        if (instance_exists(o_plant1_part1_entry)) instance_destroy(o_plant1_part1_entry);
        if (instance_exists(o_plant1_part2)) instance_destroy(o_plant1_part2);
        if (instance_exists(o_plant1_part2_entry)) instance_destroy(o_plant1_part2_entry);
        if (instance_exists(o_plant1_part3)) instance_destroy(o_plant1_part3);
        if (instance_exists(o_plant1_part3_entry)) instance_destroy(o_plant1_part3_entry);
        if (instance_exists(o_plant1_part4)) instance_destroy(o_plant1_part4);
        if (instance_exists(o_plant1_part4_entry)) instance_destroy(o_plant1_part4_entry);
    }
    if (global.pagenum != 2) {
        if (instance_exists(o_page2_sketch)) instance_destroy(o_page2_sketch);
        if (instance_exists(o_page2_colored)) instance_destroy(o_page2_colored);
        if (instance_exists(o_page2_words)) instance_destroy(o_page2_words);
		
		if (instance_exists(o_plant2_part1)) instance_destroy(o_plant2_part1);
        if (instance_exists(o_plant2_part1_entry)) instance_destroy(o_plant2_part1_entry);
        if (instance_exists(o_plant2_part2)) instance_destroy(o_plant2_part2);
        if (instance_exists(o_plant2_part2_entry)) instance_destroy(o_plant2_part2_entry);
        if (instance_exists(o_plant2_part3)) instance_destroy(o_plant2_part3);
        if (instance_exists(o_plant2_part3_entry)) instance_destroy(o_plant2_part3_entry);
        if (instance_exists(o_plant2_part4)) instance_destroy(o_plant2_part4);
        if (instance_exists(o_plant2_part4_entry)) instance_destroy(o_plant2_part4_entry);
    }

	//generate correct notebook page
	if (global.pagenum == 1) { //PAGE 1
		var phlox_map = global.notebook[? "Alpine Phlox"];
	
		if (!instance_exists(o_plant1_part1)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant1_part1) / 2, "Instances", o_plant1_part1);
		if (!instance_exists(o_plant1_part1_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant1_part1_entry) / 2, "Instances", o_plant1_part1_entry);
		if (!instance_exists(o_plant1_part2)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant1_part2) / 2, "Instances", o_plant1_part2);
		if (!instance_exists(o_plant1_part2_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant1_part2_entry) / 2, "Instances", o_plant1_part2_entry);
		if (!instance_exists(o_plant1_part3)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant1_part3) / 2, "Instances", o_plant1_part3);
		if (!instance_exists(o_plant1_part3_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant1_part3_entry) / 2, "Instances", o_plant1_part3_entry);
		if (!instance_exists(o_plant1_part4)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant1_part4) / 2, "Instances", o_plant1_part4);
		if (!instance_exists(o_plant1_part4_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant1_part4_entry) / 2, "Instances", o_plant1_part4_entry);

		//left page colored
		if (phlox_map[? "aspects_discovered"][0] && phlox_map[? "aspects_discovered"][1] && phlox_map[? "aspects_discovered"][2] && phlox_map[? "aspects_discovered"][3]) {
			phlox_map[? "fully_explored"] = true;
			
			if (!instance_exists(o_page1_colored)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page1_colored) / 2, "Instances", o_page1_colored);
			}
		
			if (instance_exists(o_page1_sketch)) {
				instance_destroy(o_page1_sketch);
			}
		//left page sketch
		} else {
			if (!instance_exists(o_page1_sketch)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page1_sketch) / 2, "Instances", o_page1_sketch);
			}
		}

		//right page (words page)
		if (!instance_exists(o_page1_words)) {
			instance_create_layer(center_x + 0, center_y - sprite_get_height(s_page1_words) / 2, "Instances", o_page1_words);
		}
		
	//PAGE 2
	} else if (global.pagenum == 2) {
		var globemallow_map = global.notebook[? "Globemallow"];
		
		if (!instance_exists(o_plant2_part1)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant2_part1) / 2, "Instances", o_plant2_part1);
		if (!instance_exists(o_plant2_part1_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant2_part1_entry) / 2, "Instances", o_plant2_part1_entry);
		if (!instance_exists(o_plant2_part2)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant2_part2) / 2, "Instances", o_plant2_part2);
		if (!instance_exists(o_plant2_part2_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant2_part2_entry) / 2, "Instances", o_plant2_part2_entry);
		if (!instance_exists(o_plant2_part3)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant2_part3) / 2, "Instances", o_plant2_part3);
		if (!instance_exists(o_plant2_part3_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant2_part3_entry) / 2, "Instances", o_plant2_part3_entry);
		if (!instance_exists(o_plant2_part4)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant2_part4) / 2, "Instances", o_plant2_part4);
		if (!instance_exists(o_plant2_part4_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant2_part4_entry) / 2, "Instances", o_plant2_part4_entry);
	
		//left page colored
		if (globemallow_map[? "aspects_discovered"][0] && globemallow_map[? "aspects_discovered"][1] && globemallow_map[? "aspects_discovered"][2] && globemallow_map[? "aspects_discovered"][3]) {
			globemallow_map[? "fully_explored"] = true;
		
			if (!instance_exists(o_page2_colored)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page2_colored) / 2, "Instances", o_page2_colored);
			}
		
			if (instance_exists(o_page2_sketch)) {
		        instance_destroy(o_page2_sketch);
		   }
		//left page sketch
		} else {
			if (!instance_exists(o_page2_sketch)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page2_sketch) / 2, "Instances", o_page2_sketch);
			}
		}

	  //right page (words page)
	  if (!instance_exists(o_page2_words)) {
	      instance_create_layer(center_x + 0, center_y - sprite_get_height(s_page2_words) / 2, "Instances", o_page2_words);
	  }
	}

} else { //if not visible, destroy
	if (instance_exists(o_NotebookBGPlaceholder)) {
		instance_destroy(o_NotebookBGPlaceholder);
	}
    if (instance_exists(o_page1_sketch)) {
        instance_destroy(o_page1_sketch);
    }
	if (instance_exists(o_page1_colored)) {
		instance_destroy(o_page1_colored);
	}
    if (instance_exists(o_page1_words)) {
        instance_destroy(o_page1_words);
    }
    if (instance_exists(o_page2_sketch)) {
        instance_destroy(o_page2_sketch);
    }
	if (instance_exists(o_page2_colored)) {
		instance_destroy(o_page2_colored);
	}
    if (instance_exists(o_page2_words)) {
        instance_destroy(o_page2_words);
    }
}
