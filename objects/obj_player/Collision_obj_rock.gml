if (hp <= 0) {
    effect_create_layer(layer, ef_firework, x, y, 1, c_white);

    if (instance_exists(global.game)) {
        global.game.alarm[0] = 120;
    }

    instance_destroy();

} else if (other.mass <= 30) {
    instance_destroy(other);
    hp -= 1;

} else {
    instance_destroy(other);
    hp -= 2;
}
