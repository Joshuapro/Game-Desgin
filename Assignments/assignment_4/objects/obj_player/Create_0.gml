/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//override default tuning variables
hspd_max = 3
accel = 1
jump_max= 5
grav_amt= .5
jump_hold = .25 * room_speed
num_jump = 1
jump_pressed_timer = 60
coyote_time = 15

shake_counter = 0
reset = true

dead_timer = 0.5 * room_speed
dead = false

if (room == Level_2 or room == Level_3){
	image_xscale = -1
}