/// @description Insert description here
// You can write your code in this editor

//add gravity and fall
vspd += grav
y += vspd

//reset the rock if we go below the bottom of the screen
if (y >= room_height){
	y = random_range(-sprite_width/2, -200)
	vspd = 0
	x = random_range(sprite_width/2, room_width - sprite_width/2)
}