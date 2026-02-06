if (global.scrap >= 3){
	global.scrap -= 3
	global.basehp += 10;
	room_goto(EndlessMode)
} else {
	room_goto(EndlessMode)
}