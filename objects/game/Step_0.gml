if (game_state == GAME_OVER) {
    exit; // prevents game logic from running
}
if (game_state == GAME_OVER) {
    if (mouse_check_button_pressed(mb_left)) {
        room_restart();
    }
}
