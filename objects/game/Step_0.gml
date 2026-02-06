if (game_state == GAME_OVER) {
    if (mouse_check_button_pressed(mb_left)) {
        room_restart();
    }
}
if (wave_in_progress && rocks_remaining <= 0 && enemies_remaining <= 0) {
    wave_in_progress = false;
    wave++;
    alarm[0] = room_speed * 3; // delay before next wave
}
if (game_state != GAME_OVER) {
    if (keyboard_check(vk_escape)) {
        room_goto(PauseScreen)
    }
}