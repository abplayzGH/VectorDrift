// First apply damage based on rock mass
if (other.mass <= 30) {
    hp = max(hp - 1, 0);
} else {
    hp = max(hp - 2, 0);
}

// Destroy the rock
instance_destroy(other);

// Check if player is dead after taking damage
if (hp <= 0) {
    effect_create_layer(layer, ef_firework, x, y, 1, c_white);

    if (instance_exists(global.game)) {
        global.game.alarm[0] = 120;
    }

    instance_destroy();
    exit; // Prevent further code execution after player is destroyed
}
