/// @description Insert description here
// You can write your code in this editor
dead_timer -= 1
if (dead_timer <= 0){
	r1 = random_range(0, room_height-sprite_height/2)
	r2 = random_range(0, room_height-sprite_height/2)
	r3 = random_range(0, room_height-sprite_height/2)
	instance_create_depth(room_width,r1 ,0, Object_enemy)
	instance_create_depth(room_width,r2 ,0, Object_enemy)
	instance_create_depth(room_width,r3 ,0, Object_enemy)
	dead_timer = 2 * room_speed
}