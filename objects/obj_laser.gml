// Laser Projectile Object
// Player weapon projectile for Feature A

// Create Event
image_xscale = 0.5;
image_yscale = 1.5;

// Step Event
// Destroy if outside room
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

// Draw Event
draw_self();
