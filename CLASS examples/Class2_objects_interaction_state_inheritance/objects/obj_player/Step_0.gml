/// @description Insert description here
// You can write your code in this editor

//if the player is not dead, check inputs for movement and apply.
if (!dead){
	if (keyboard_check(vk_right)){
		x += mspd	
	}

	if (keyboard_check(vk_left)){
		x -= mspd	
	}

	if (keyboard_check(vk_down)){
		y += mspd	
	}

	if (keyboard_check(vk_up)){
		y -= mspd	
	}
}

//if we press z, create a bullet object.
if (keyboard_check_pressed(ord("Z"))){
	instance_create_depth(x, y - sprite_height/2, -1, obj_bullet)	
}


//basic collision checking based on collision mask
/*if (place_meeting(x,y,obj_rock)){
	x = start_x
	y = start_y
}*/

//more complex collision checking that lets us modify
//the rock that we hit. we store the instance in a 
//temporary variable so that we can reach into and
//affect its code.
var hit_rock = instance_place(x,y,obj_rock)
if(!dead and instance_exists(hit_rock)){
	x = start_x
	y = start_y
	hit_rock.y = random_range(-sprite_width/2, -200)
	hit_rock.x = random_range(sprite_width/2, room_width - sprite_width/2)
	hit_rock.vspd = 0
	dead=true
	dead_timer = dead_timer_max
	global.player_lives -= 1
}

//increment death timer
if (dead_timer > 0){
	dead_timer--
} else {
	dead = false
}


