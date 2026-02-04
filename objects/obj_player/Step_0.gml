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

// --- Shooting ---
if (mouse_check_button_pressed(mb_left)) {
    var b = instance_create_layer(x, y, "Instances", obj_bullet);
    b.hsp += hsp; // inherit momentum
    b.vsp += vsp;
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

    other.hsp += lengthdir_x(force, dir);
    other.vsp += lengthdir_y(force, dir);
  
}
