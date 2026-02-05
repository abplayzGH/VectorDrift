// Destroy off screen
if (!position_meeting(x, y, obj_player) &&
    (x < -64 || x > room_width + 64 || y < -64 || y > room_height + 64)) {
    instance_destroy();
}
