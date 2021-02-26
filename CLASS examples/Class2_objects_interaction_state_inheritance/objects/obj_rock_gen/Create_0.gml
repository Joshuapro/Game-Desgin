/// @description Insert description here
// You can write your code in this editor

num_rocks = 2

//we use a for loop to make as many rocks as we want.
//we can change the amount simply by modifying num_rocks.
for (var i = 0; i < num_rocks; i++)
{

	rock_array[i] = instance_create_depth(random_range(sprite_width/2, room_width - sprite_width/2), random_range(-sprite_width/2, -200), 0, obj_rock)
	
}


