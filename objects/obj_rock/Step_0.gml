move_wrap(true, true, 100)
image_angle += 1;

with (obj_rock) {
    if (id != other.id) {
        
        var dist = point_distance(x, y, other.x, other.y);

        // Prevent divide-by-zero & extreme forces
        dist = max(dist, 16);

        var dir = point_direction(other.x, other.y, x, y);

        // Newton-style gravity (scaled for gameplay)
        var G = 0.002; // GAMEPLAY constant, not real physics
        var force = G * (mass * other.mass) / sqr(dist);

        // Clamp force so it stays controllable
        force = clamp(force, 0, 0.05);

        other.hsp += lengthdir_x(force, dir);
        other.vsp += lengthdir_y(force, dir);
    }
}