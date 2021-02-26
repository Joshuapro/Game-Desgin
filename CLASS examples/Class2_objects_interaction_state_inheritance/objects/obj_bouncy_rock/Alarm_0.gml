/// @description Insert description here
// You can write your code in this editor

//bounce
vspd *= -.8
xspd = random_range(-4,4)

//reset the alarm every time we bounce so we can keep doin' it
alarm[0] = 0.2 * room_speed