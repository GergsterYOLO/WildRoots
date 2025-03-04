// If visible display pages
if (global.nbvisible) {
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);

    var screen_width = camera_get_view_width(view_camera[0]);
    var screen_height = camera_get_view_height(view_camera[0]);

    // Center pos
    var center_x = cam_x + screen_width / 2;
    var center_y = cam_y + screen_height / 2;

    // Left page
    if (!instance_exists(o_page1_sketch)) {
        instance_create_layer(center_x - 410, center_y - sprite_get_height(s_page1_sketch) / 2, "Instances", o_page1_sketch);
    }

    // Right page
    if (!instance_exists(o_page1_words)) {
        instance_create_layer(center_x + 0, center_y - sprite_get_height(s_page1_words) / 2, "Instances", o_page1_words);
    }
} else { //if not visible destroy
    if (instance_exists(o_page1_sketch)) {
        instance_destroy(o_page1_sketch);
    }
    if (instance_exists(o_page1_words)) {
        instance_destroy(o_page1_words);
    }
}