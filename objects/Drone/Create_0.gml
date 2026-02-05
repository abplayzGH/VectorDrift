move_speed = 0.2;
max_speed = 2;

fire_cooldown = irandom_range(30, 60); // stagger enemies
fire_delay = max(room_speed * 0.4, room_speed * (1.2 - game.difficulty * 0.05));
