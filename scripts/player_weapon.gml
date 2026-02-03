// Player Ship Weapon Script
// Basic weapon system for Feature A

function player_weapon() {
    // Weapon constants
    var fire_rate = 10; // Frames between shots
    
    // Check if spacebar is pressed and enough time has passed
    if (keyboard_check_pressed(vk_space)) {
        if (can_fire) {
            // Create laser projectile
            var laser = instance_create_layer(x, y - 20, "Instances", obj_laser);
            laser.direction = 90; // Shoot upward
            laser.speed = 8;
            
            can_fire = false;
            alarm[0] = fire_rate; // Start cooldown timer
        }
    }
}
