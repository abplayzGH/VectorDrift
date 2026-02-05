// --- Rotation ---
// A = rotate left, D = rotate right (GameMaker-friendly)
if (keyboard_check(ord("D"))) {
    image_angle -= turn_speed;
}
if (keyboard_check(ord("A"))) {
    image_angle += turn_speed;
}

// --- Thrust ---
if (keyboard_check(ord("W"))) {
    hsp += lengthdir_x(thrust_power, image_angle);
    vsp += lengthdir_y(thrust_power, image_angle);
}

// --- Reverse Thrusters (ONLY when pressed) ---
if (keyboard_check(ord("S"))) {
    hsp *= 0.90;
    vsp *= 0.90;
}

if (fire_cooldown > 0) {
    fire_cooldown--;
}


if (mouse_check_button(mb_left) && fire_cooldown <= 0) {
    var b = instance_create_layer(x, y, "Instances", obj_bullet);

    // Inherit momentum
    b.hsp += hsp;
    b.vsp += vsp;

    fire_cooldown = fire_delay;
}

// --- Apply friction (VERY small space drag) ---
hsp *= friction;
vsp *= friction;

// --- Clamp max speed ---
var spd = point_distance(0, 0, hsp, vsp);
if (spd > max_speed) {
    var dir = point_direction(0, 0, hsp, vsp);
    hsp = lengthdir_x(max_speed, dir);
    vsp = lengthdir_y(max_speed, dir);
}

// --- Move ---
x += hsp;
y += vsp;

// --- Screen wrap ---
move_wrap(true, true, 0);


// Apply gravity wells
with (obj_rock) {
    var dist = point_distance(x, y, other.x, other.y);
    var dir = point_direction(other.x, other.y, x, y);
    force = (.1*(mass * other.mass))/(sqr(dist))
	force *= global.gravity_mult;

    other.hsp += lengthdir_x(force, dir);
    other.vsp += lengthdir_y(force, dir);
  
}

if (hp <= 0) {
    effect_create_layer(layer, ef_firework, x, y, 1, c_white);
	
	//game.alarm[0] = 120
	game.game_state = game.GAME_OVER

    instance_destroy();
}
