

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
}  