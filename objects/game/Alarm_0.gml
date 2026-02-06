wave_in_progress = true;

rocks_remaining = rock_base_count + wave;

// Scale difficulty per wave
rock_speed_mult = 1 + wave * 0.1;
global.gravity_mult = min(1 + wave * 0.05, 2);

// Spawn rocks
for (var i = 0; i < rocks_remaining; i++) {
    var r = instance_create_layer(
        irandom(room_width),
        -32,
        "Instances",
        obj_rock
    );

    r.hsp *= rock_speed_mult;
    r.vsp *= rock_speed_mult;
}
if (wave >= 3){
	global.level += 1
	wave = 1
	room_goto(Upgrades)
}

instance_create_layer(
	irandom(room_width),
	irandom(room_height),
	"Instances",
	Scrap)

// Spawn enemies after wave 2
if (wave >= 3) {
	for (var i = 0; i < wave; i += 1)
    instance_create_layer(
        irandom(room_width),
        irandom(room_height),
        "Instances",
        Drone
    );
}
