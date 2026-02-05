

if (instance_exists(obj_player)) {
    var dir = point_direction(x, y, obj_player.x, obj_player.y);

    hspeed += lengthdir_x(move_speed, dir);
    vspeed += lengthdir_y(move_speed, dir);

    var spd = point_distance(0, 0, hspeed, vspeed);
    if (spd > max_speed) {
        var clamp_dir = point_direction(0, 0, hspeed, vspeed);
        hspeed = lengthdir_x(max_speed, clamp_dir);
        vspeed = lengthdir_y(max_speed, clamp_dir);
    }
	
	var p = instance_nearest(x, y, obj_player);
    var dir = point_direction(x, y, p.x, p.y);

    image_angle = dir;

    if (fire_cooldown > 0) fire_cooldown--;

    if (fire_cooldown <= 0) {
        var b = instance_create_layer(x, y, "Instances", obj_enemy_bullet);
        b.direction = dir;
        b.speed = 8;
        fire_cooldown = fire_delay;
    }
}  
