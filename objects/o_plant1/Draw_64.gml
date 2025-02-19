if (notebook_visible) {
    var screen_width = display_get_gui_width();
    var screen_height = display_get_gui_height();
    
    // Center positions
    var center_x = screen_width / 2;
    var center_y = screen_height / 2;
    
    // Draw the first page
    draw_sprite(s_page1_sketch, 0, center_x - 450, center_y - sprite_get_height(s_page1_sketch) / 2);
    
    // Draw the second page right next to it
    draw_sprite(s_page1_words, 0, center_x + 50, center_y - sprite_get_height(s_page1_words) / 2);
}