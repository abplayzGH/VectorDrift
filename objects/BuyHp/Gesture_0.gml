if (global.scrap >= 3){
	global.scrap -= 3
	global.basehp += 10;
	obj_player.hp += 10
	game.alarm[0] = game.room_speed * 3;  // Trigger wave start after 3 seconds
	room_goto(EndlessMode)
} else {
	game.alarm[0] = game.room_speed * 3;  // Trigger wave start after 3 seconds
	room_goto(EndlessMode)
	
	
}