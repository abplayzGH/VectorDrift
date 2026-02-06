game.points += 50 * game.difficulty
instance_destroy(other)
effect_create_above(ef_explosion, x, y, 1, c_white)

direction = random(360)


if sprite_index == spr_rock_big{
	sprite_index = spr_rock_small
	rock2 = instance_create_layer(x-10, y+15, "Instances", obj_rock)
	rock2.sprite_index = spr_rock_small
}else{
	instance_destroy()
}