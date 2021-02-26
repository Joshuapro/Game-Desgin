/// @description Insert description here
// You can write your code in this editor

//control variables
L_pressed = false
L_released = false
L_hold = false

R_pressed = false
R_released = false
R_hold = false

action_1_pressed = false
action_1_released = false
action_1_hold = false

//sprite control
sprite_idle = spr_snowman_idle
sprite_walk = spr_snowman_run
sprite_jump = spr_snowman_jump
sprite_fall = spr_snowman_fall

//did I walk into something?
x_blocked = false



// Feel free to change these variables or add your own functionality.
hspd_max = 4
accel = .1
jump_max= 6
grav_amt= .8
jump_hold = .25 * room_speed
num_jump = 1
jump_pressed_timer = 60
coyote_time = 30

#region Do not change these.
hspd = 0
vspd = 0
grounded=false
just_jumped = false
jumps_spent = 0
jump_pressed = false
x_remainder = 0
y_remainder = 0
image_speed=1
#endregion