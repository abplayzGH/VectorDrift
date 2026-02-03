// Player Ship Object
// Main player object for Feature A

// Create Event
health = 100;
can_fire = true;
score = 0;

// Step Event
player_movement();
player_weapon();

// Alarm 0 Event - Weapon cooldown
can_fire = true;

// Draw Event
draw_self();

// Draw GUI Event
draw_set_color(c_white);
draw_text(10, 10, "Health: " + string(health));
draw_text(10, 30, "Score: " + string(score));
