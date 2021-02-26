/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("A")){
	L_pressed = true
	L_hold = true
}

if keyboard_check_released(ord("A")){
	L_released = true
	L_hold = false
}

if keyboard_check_pressed(ord("D")){
	R_pressed = true
	R_hold = true
}

if keyboard_check_released(ord("D")){
	R_released = true
	R_hold = false
}

if keyboard_check_pressed(vk_space){
	action_1_pressed = true
	action_1_hold = true
}

if keyboard_check_released(vk_space){
	action_1_released = true
	action_1_hold = false
}




if (R_hold and grounded){
	global.left = true
	for(var i = 0; i< 2; i++){
		instance_create_depth(x,y,0,particles)
	}
}


if (L_hold and grounded){
	global.left = false
	for(var i = 0; i< 2; i++){
		instance_create_depth(x,y,0,particles)
	}
}

if (vspd and reset){
	reset = false
	shake_counter = 0
}

if (vspd > 0){
	shake_counter += 0.15
}

if (grounded and not reset){
	ShakeScreen(shake_counter,0.25)
	reset = true
}


var hit_fire = instance_place(x,y,obj_actor)
var hit_pin = instance_place(x,y,obj_pin)
var hit_door = instance_place(x,y,obj_DOOR)
var hit_bullet = instance_place(x,y,Bullet)
var hit_bullet_two = instance_place(x,y,FallBullet)



if ((hit_fire and not dead) or (hit_pin and not dead) or (hit_bullet and not dead) or (hit_bullet_two and not dead)){
	global.livess--
	dead_timer = 0.5 * room_speed
	dead = true
}

if (dead_timer > 0){
	dead_timer--
}else{
	dead = false
}

if (hit_door){
	if(room == rm_game){
		room = Level_2
	}
	if(room == Level_2){
		room = Level_3
	}
	if(room == Level_3){
		room = over
	}
}

event_inherited();

buttons_false();

