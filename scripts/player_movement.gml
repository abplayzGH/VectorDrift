// Player Ship Movement Script
// Implements momentum-based movement for Feature A

function player_movement() {
    // Movement constants
    var acceleration = 0.3;
    var max_speed = 5;
    var friction = 0.95;
    
    // Input handling
    var move_x = 0;
    var move_y = 0;
    
    // Check keyboard input (WASD or Arrow Keys)
    if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
        move_x -= 1;
    }
    if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
        move_x += 1;
    }
    if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
        move_y -= 1;
    }
    if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
        move_y += 1;
    }
    
    // Apply acceleration to velocity
    hspeed += move_x * acceleration;
    vspeed += move_y * acceleration;
    
    // Apply friction
    hspeed *= friction;
    vspeed *= friction;
    
    // Cap max speed
    var current_speed = sqrt(hspeed * hspeed + vspeed * vspeed);
    if (current_speed > max_speed) {
        hspeed = (hspeed / current_speed) * max_speed;
        vspeed = (vspeed / current_speed) * max_speed;
    }
    
    // Screen wrapping
    if (x < 0) x = room_width;
    if (x > room_width) x = 0;
    if (y < 0) y = room_height;
    if (y > room_height) y = 0;
}
