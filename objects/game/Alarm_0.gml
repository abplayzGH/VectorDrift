difficulty += 1;

// Increase difficulty values
rock_spawn_count += 1;
rock_speed_mult += 0.1;
global.gravity_mult += 0.05;

// Clamp so it doesn’t break the game
rock_spawn_count = min(rock_spawn_count, 6);
rock_speed_mult = min(rock_speed_mult, 2);
global.gravity_mult = min(global.gravity_mult, 2);

for (var i = 0; i < rock_spawn_count; i++) {
    var r = instance_create_layer(
        irandom(room_width),
        -32,
        "Instances",
        obj_rock
    );
	show_debug_message("Spawning rock");


    r.hsp *= rock_speed_mult;
    r.vsp *= rock_speed_mult;
}

if (difficulty > 1) {
	instance_create_layer(irandom(room_width), irandom(room_height), "Instances", Drone)
}



alarm[0] = room_speed * 10;