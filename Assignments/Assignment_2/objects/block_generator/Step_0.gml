/// @description Insert description here
// You can write your code in this editor

dead_timer -= 1;

if (dead_timer <= 0 and flag){
	r1 = random_range(-200, room_height - 100)
	r2 = random_range(-200, room_height - 100)
	r3 = random_range(-200, room_height - 100)
	r4 = random_range(-200, room_height - 100)
	r5 = random_range(-200, room_height - 100)


	instance_create_depth(room_width,r1, 0, Block)
	instance_create_depth(room_width+350,r2, 0, Block)
	instance_create_depth(room_width+700,r3, 0, Block)
	instance_create_depth(room_width+1050,r4, 0, Block)
	instance_create_depth(room_width+1400,r5, 0, Block)
	
	flag = false;
}