//if visible, display pages
if (global.nbvisible) {
	//map-ception
	var phlox_map = global.notebook[? "Alpine Phlox"];
	var globemallow_map = global.notebook[? "Globemallow"];
	var palmers_map = global.notebook[? "Palmers"];
	var fremont_map = global.notebook[? "Fremont"];
	var mountain_map = global.notebook[? "Mountain"];
	
    //center pos for nb
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    var screen_width = camera_get_view_width(view_camera[0]);
    var screen_height = camera_get_view_height(view_camera[0]);
    var center_x = cam_x + screen_width / 2;
    var center_y = cam_y + screen_height / 2;
	
	//notebook BG
	if (!instance_exists(o_NotebookBGPlaceholder)) {
		instance_create_layer(center_x - 510, center_y - sprite_get_height(s_NotebookBGPlaceholder) / 2, "Instances", o_NotebookBGPlaceholder);
	}

    //destroy non-relevant pages
    if (global.pagenum != 0) {
		//check if page is discovered and if so destroy the blank pages
		if ( (global.pagenum == 1 && phlox_map[? "discovered"]) || (global.pagenum == 2 && globemallow_map[? "discovered"]) || (global.pagenum == 3 && palmers_map[? "discovered"]) || (global.pagenum == 4 && fremont_map[? "discovered"]) || (global.pagenum == 5 && mountain_map[? "discovered"]) ) {
			if (instance_exists(o_blankpageleft)) instance_destroy(o_blankpageleft);
			if (instance_exists(o_blankpageright)) instance_destroy(o_blankpageright);
		}
	}	
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
	if (global.pagenum != 3) {
		if (instance_exists(o_page3_sketch)) instance_destroy(o_page3_sketch);
        if (instance_exists(o_page3_colored)) instance_destroy(o_page3_colored);
        if (instance_exists(o_page3_words)) instance_destroy(o_page3_words);
		
		if (instance_exists(o_plant3_part1)) instance_destroy(o_plant3_part1);
        if (instance_exists(o_plant3_part1_entry)) instance_destroy(o_plant3_part1_entry);
        if (instance_exists(o_plant3_part2)) instance_destroy(o_plant3_part2);
        if (instance_exists(o_plant3_part2_entry)) instance_destroy(o_plant3_part2_entry);
        if (instance_exists(o_plant3_part3)) instance_destroy(o_plant3_part3);
        if (instance_exists(o_plant3_part3_entry)) instance_destroy(o_plant3_part3_entry);
        if (instance_exists(o_plant3_part4)) instance_destroy(o_plant3_part4);
        if (instance_exists(o_plant3_part4_entry)) instance_destroy(o_plant3_part4_entry);
	}
	if (global.pagenum != 4) {
		if (instance_exists(o_page4_sketch)) instance_destroy(o_page4_sketch);
        if (instance_exists(o_page4_colored)) instance_destroy(o_page4_colored);
        if (instance_exists(o_page4_words)) instance_destroy(o_page4_words);
		
		if (instance_exists(o_plant4_part1)) instance_destroy(o_plant4_part1);
        if (instance_exists(o_plant4_part1_entry)) instance_destroy(o_plant4_part1_entry);
        if (instance_exists(o_plant4_part2)) instance_destroy(o_plant4_part2);
        if (instance_exists(o_plant4_part2_entry)) instance_destroy(o_plant4_part2_entry);
        if (instance_exists(o_plant4_part3)) instance_destroy(o_plant4_part3);
        if (instance_exists(o_plant4_part3_entry)) instance_destroy(o_plant4_part3_entry);
        if (instance_exists(o_plant4_part4)) instance_destroy(o_plant4_part4);
        if (instance_exists(o_plant4_part4_entry)) instance_destroy(o_plant4_part4_entry);
	}
		if (global.pagenum != 5) {
		if (instance_exists(o_page5_sketch)) instance_destroy(o_page5_sketch);
        if (instance_exists(o_page5_colored)) instance_destroy(o_page5_colored);
        if (instance_exists(o_page5_words)) instance_destroy(o_page5_words);
		
		if (instance_exists(o_plant5_part1)) instance_destroy(o_plant5_part1);
        if (instance_exists(o_plant5_part1_entry)) instance_destroy(o_plant5_part1_entry);
        if (instance_exists(o_plant5_part2)) instance_destroy(o_plant5_part2);
        if (instance_exists(o_plant5_part2_entry)) instance_destroy(o_plant5_part2_entry);
        if (instance_exists(o_plant5_part3)) instance_destroy(o_plant5_part3);
        if (instance_exists(o_plant5_part3_entry)) instance_destroy(o_plant5_part3_entry);
        if (instance_exists(o_plant5_part4)) instance_destroy(o_plant5_part4);
        if (instance_exists(o_plant5_part4_entry)) instance_destroy(o_plant5_part4_entry);
	}

	//generate correct notebook page
	if (global.pagenum == 0) {
		if (!instance_exists(o_blankpageleft)) instance_create_layer(center_x, center_y - sprite_get_height(s_blankpage) / 2, "Instances", o_blankpageleft);
		if (!instance_exists(o_blankpageright)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_blankpage) / 2, "Instances", o_blankpageright);
	}
	if (global.pagenum == 1 && phlox_map[? "discovered"]) { //PAGE 1
		//generate parts
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
	} else if (global.pagenum == 2  && globemallow_map[? "discovered"]) {
		//generate parts
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
	  //PAGE 3
	} else if (global.pagenum == 3 && palmers_map[? "discovered"]) {
		//generate parts
		if (!instance_exists(o_plant3_part1)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant3_part1) / 2, "Instances", o_plant3_part1);
		if (!instance_exists(o_plant3_part1_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant3_part1_entry) / 2, "Instances", o_plant3_part1_entry);
		if (!instance_exists(o_plant3_part2)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant3_part2) / 2, "Instances", o_plant3_part2);
		if (!instance_exists(o_plant3_part2_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant3_part2_entry) / 2, "Instances", o_plant3_part2_entry);
		if (!instance_exists(o_plant3_part3)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant3_part3) / 2, "Instances", o_plant3_part3);
		if (!instance_exists(o_plant3_part3_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant3_part3_entry) / 2, "Instances", o_plant3_part3_entry);
		if (!instance_exists(o_plant3_part4)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant3_part4) / 2, "Instances", o_plant3_part4);
		if (!instance_exists(o_plant3_part4_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant3_part4_entry) / 2, "Instances", o_plant3_part4_entry);

		//left page colored
		if (palmers_map[? "aspects_discovered"][0] && palmers_map[? "aspects_discovered"][1] && palmers_map[? "aspects_discovered"][2] && palmers_map[? "aspects_discovered"][3]) {
			palmers_map[? "fully_explored"] = true;
			
			if (!instance_exists(o_page3_colored)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page3_colored) / 2, "Instances", o_page3_colored);
			}
		
			if (instance_exists(o_page3_sketch)) {
				instance_destroy(o_page3_sketch);
			}
		//left page sketch
		} else {
			if (!instance_exists(o_page3_sketch)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page3_sketch) / 2, "Instances", o_page3_sketch);
			}
		}

		//right page (words page)
		if (!instance_exists(o_page3_words)) {
			instance_create_layer(center_x + 0, center_y - sprite_get_height(s_page3_words) / 2, "Instances", o_page3_words);
		}	  
		//PAGE 4
	} else if (global.pagenum == 4 && fremont_map[? "discovered"]) {
		//generate parts
		if (!instance_exists(o_plant4_part1)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant4_part1) / 2, "Instances", o_plant4_part1);
		if (!instance_exists(o_plant4_part1_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant4_part1_entry) / 2, "Instances", o_plant4_part1_entry);
		if (!instance_exists(o_plant4_part2)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant4_part2) / 2, "Instances", o_plant4_part2);
		if (!instance_exists(o_plant4_part2_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant4_part2_entry) / 2, "Instances", o_plant4_part2_entry);
		if (!instance_exists(o_plant4_part3)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant4_part3) / 2, "Instances", o_plant4_part3);
		if (!instance_exists(o_plant4_part3_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant4_part3_entry) / 2, "Instances", o_plant4_part3_entry);
		if (!instance_exists(o_plant4_part4)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant4_part4) / 2, "Instances", o_plant4_part4);
		if (!instance_exists(o_plant4_part4_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant4_part4_entry) / 2, "Instances", o_plant4_part4_entry);

		//left page colored
		if (fremont_map[? "aspects_discovered"][0] && fremont_map[? "aspects_discovered"][1] && fremont_map[? "aspects_discovered"][2] && fremont_map[? "aspects_discovered"][3]) {
			fremont_map[? "fully_explored"] = true;
			
			if (!instance_exists(o_page4_colored)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page4_colored) / 2, "Instances", o_page4_colored);
			}
		
			if (instance_exists(o_page4_sketch)) {
				instance_destroy(o_page4_sketch);
			}
		//left page sketch
		} else {
			if (!instance_exists(o_page4_sketch)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page4_sketch) / 2, "Instances", o_page4_sketch);
			}
		}

		//right page (words page)
		if (!instance_exists(o_page4_words)) {
			instance_create_layer(center_x + 0, center_y - sprite_get_height(s_page4_words) / 2, "Instances", o_page4_words);
		}
	} else if (global.pagenum == 5 && mountain_map[? "discovered"]) {
		//generate parts
		if (!instance_exists(o_plant5_part1)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant5_part1) / 2, "Instances", o_plant5_part1);
		if (!instance_exists(o_plant5_part1_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant5_part1_entry) / 2, "Instances", o_plant5_part1_entry);
		if (!instance_exists(o_plant5_part2)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant5_part2) / 2, "Instances", o_plant5_part2);
		if (!instance_exists(o_plant5_part2_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant5_part2_entry) / 2, "Instances", o_plant5_part2_entry);
		if (!instance_exists(o_plant5_part3)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant5_part3) / 2, "Instances", o_plant5_part3);
		if (!instance_exists(o_plant5_part3_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant5_part3_entry) / 2, "Instances", o_plant5_part3_entry);
		if (!instance_exists(o_plant5_part4)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_plant5_part4) / 2, "Instances", o_plant5_part4);
		if (!instance_exists(o_plant5_part4_entry)) instance_create_layer(center_x, center_y - sprite_get_height(s_plant5_part4_words) / 2, "Instances", o_plant5_part4_entry);

		//left page colored
		if (mountain_map[? "aspects_discovered"][0] && mountain_map[? "aspects_discovered"][1] && mountain_map[? "aspects_discovered"][2] && mountain_map[? "aspects_discovered"][3]) {
			mountain_map[? "fully_explored"] = true;
			
			if (!instance_exists(o_page5_colored)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page5_colored) / 2, "Instances", o_page5_colored);
			}
		
			if (instance_exists(o_page5_sketch)) {
				instance_destroy(o_page5_sketch);
			}
		//left page sketch
		} else {
			if (!instance_exists(o_page5_sketch)) {
				instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page5_sketch) / 2, "Instances", o_page5_sketch);
			}
		}

		//right page (words page)
		if (!instance_exists(o_page5_words)) {
			instance_create_layer(center_x + 0, center_y - sprite_get_height(s_page5_words) / 2, "Instances", o_page5_words);
		}
	}
	
	//turn page
	if (global.tryturnleft) {
		if (global.pagenum != 0) {
			global.pagenum--;
		}
		
		//check if trying to navigate to undiscovered page and print blank instead
		if ( (global.pagenum == 1 && !phlox_map[? "discovered"]) || (global.pagenum == 2 && !globemallow_map[? "discovered"]) || (global.pagenum == 3 && !palmers_map[? "discovered"]) || (global.pagenum == 4 && !fremont_map[? "discovered"]) ) {
			if (!instance_exists(o_blankpageleft)) instance_create_layer(center_x, center_y - sprite_get_height(s_blankpage) / 2, "Instances", o_blankpageleft);
			if (!instance_exists(o_blankpageright)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_blankpage) / 2, "Instances", o_blankpageright);
		}
		
		global.tryturnleft = false;
	}
	if (global.tryturnright) {
		if (global.pagenum != 5) {
			global.pagenum++;
		}
		
		//check if trying to navigate to undiscovered page and print blank instead
		if ( (global.pagenum == 2 && !globemallow_map[? "discovered"]) || (global.pagenum == 3 && !palmers_map[? "discovered"]) || (global.pagenum == 4 && !fremont_map[? "discovered"]) || (global.pagenum == 5 && !mountain_map[? "discovered"]) ) {
			if (!instance_exists(o_blankpageleft)) instance_create_layer(center_x, center_y - sprite_get_height(s_blankpage) / 2, "Instances", o_blankpageleft);
			if (!instance_exists(o_blankpageright)) instance_create_layer(center_x - 410, center_y - sprite_get_height(s_blankpage) / 2, "Instances", o_blankpageright);
		}
		
		global.tryturnright = false;
	}

} else { //if not visible, destroy
	if (instance_exists(o_blankpageleft)) {
        instance_destroy(o_blankpageleft);
    }
	if (instance_exists(o_blankpageright)) {
        instance_destroy(o_blankpageright);
    }
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
	if (instance_exists(o_page3_sketch)) {
        instance_destroy(o_page3_sketch);
    }
	if (instance_exists(o_page3_colored)) {
		instance_destroy(o_page3_colored);
	}
    if (instance_exists(o_page3_words)) {
        instance_destroy(o_page3_words);
    }
    if (instance_exists(o_page4_sketch)) {
        instance_destroy(o_page4_sketch);
    }
	if (instance_exists(o_page4_colored)) {
		instance_destroy(o_page4_colored);
	}
    if (instance_exists(o_page4_words)) {
        instance_destroy(o_page4_words);
    }
	    if (instance_exists(o_page5_sketch)) {
        instance_destroy(o_page5_sketch);
    }
	if (instance_exists(o_page5_colored)) {
		instance_destroy(o_page5_colored);
	}
    if (instance_exists(o_page5_words)) {
        instance_destroy(o_page5_words);
    }
}