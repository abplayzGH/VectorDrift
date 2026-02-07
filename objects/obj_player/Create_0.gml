// --------------------
// Movement
// --------------------
max_speed   = 8;
thrust_power = 0.25;
turn_speed  = 4;
friction    = 0.99;

// --------------------
// Velocity
// --------------------
hsp = 0;
vsp = 0;

// --------------------
// Physics
// --------------------
mass = 10;

// --------------------
// Health
// --------------------
if (!variable_global_exists("basehp")) {
    global.basehp = 20;
}

hp = global.basehp;  // 3 base HP + upgrades
// --------------------
// Shooting
// --------------------
fire_cooldown = 0;
fire_delay = room_speed * 0.2 / global.firerate;

