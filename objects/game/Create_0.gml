points = 0

global.game = id;

// Game states
GAME_PLAYING = 0;
GAME_OVER    = 1;

game_state = GAME_PLAYING;
wave = 1
level = 1
difficulty = 1;

// Rock spawn settings
rock_spawn_count = 1;
rock_speed_mult = 1;
global.gravity_mult = 1;


rocks_remaining = 0;
enemies_remaining = 0
wave_in_progress = false;
global.scrap = 0;

// Difficulty scaling
rock_base_count = 3;


alarm[0]= room_speed * 3
