spawn_timer++;
if (game.wave > 1){
	if (spawn_timer >= spawn_delay) {
	    spawn_timer = 0;

	    instance_create_depth(200, 200, 0, Drone);


	    spawn_delay += spawn_delay_increase;
	    spawn_delay = min(spawn_delay, max_spawn_delay);
	}
}
