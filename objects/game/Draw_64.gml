draw_set_font(global.font2x_main);
draw_text(window_get_width() * .02, window_get_height() * .01, $"Score: {points}")
draw_text(window_get_width() * .90, window_get_height() * .01, $"Wave: {wave}")
draw_text(window_get_width() * .2, window_get_height() * .01, $"Scrap: {global.scrap}")
if (game_state == GAME_OVER) {
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(display_get_gui_width()/2,
              display_get_gui_height()/2 - 60,
              "GAME OVER");
			  
    draw_text(display_get_gui_width()/2,
              display_get_gui_height()/2 - 20,
              $"Score: {points}");

    draw_text(display_get_gui_width()/2,
              display_get_gui_height()/2 + 20,
              "Click to Restart");
}
