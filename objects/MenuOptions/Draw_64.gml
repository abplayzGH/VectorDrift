draw_set_font(global.font2x_main);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(display_get_gui_width()/2, display_get_gui_height()/2 * 0.2, "Vector Drift")
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 - 120, "Click to Start")
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 * 1.05, "-----Controlls-----")
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 * 1.05 + 40, "Forward - Up Arrow")
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 * 1.05 + 80, "Slow Down - Down Arrow")
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 * 1.05 + 120, "Turn Right - Right Arrow")
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 * 1.05 + 160, "Turn Left - Left Arrow")
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 * 1.05 + 200, "Shoot - Click / Hold Click")
