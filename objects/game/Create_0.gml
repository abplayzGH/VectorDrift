points = 0;
persistent = true;
global.game = id;

// --------------------
// Game States
// --------------------
GAME_PLAYING = 0;
GAME_OVER    = 1;
game_state = GAME_PLAYING;

// --------------------
// Progression
// --------------------
wave = 1;
difficulty = 1;
global.level = 1;

// --------------------
// Player / Upgrades
// --------------------
global.basehp   = 20;
global.firerate = 3;
global.scrap    = 0;

// --------------------
// Rock / Physics
// --------------------
rock_base_count  = 3;
rock_spawn_count = 1;
rock_speed_mult  = 1;
global.gravity_mult = 1;

// --------------------
// Wave Tracking
// --------------------
rocks_remaining   = 0;
enemies_remaining = 0;
wave_in_progress  = false;
instance_create_layer(window_get_width()/2, window_get_height()/2, "Instances", obj_player)
// --------------------
// Start First Wave
// --------------------
alarm[0] = room_speed * 3;
