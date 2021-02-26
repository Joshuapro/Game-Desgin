#region base movement and animation related to keypress

vspd += grav_amt                                        //apply gravity

if keyboard_check(ord("A")){							// if pressing A..
	
	global.left = false
    if (hspd > -hspd_max){
		hspd -= accel	                                //accelerate if not at max speed left
	} else { 
		hspd = -hspd_max 
	}
    image_xscale = -1									//flip the sprite to face left
    if grounded{
        sprite_index= spr_snowman_run
		for(var i = 0; i< 2; i++){
			instance_create_depth(x,y,0,Particles)
		}
    }
	
		
}else if keyboard_check(ord("D")){                     //otherwise if D same deal in other direction...
	global.left = true
    if (hspd < hspd_max){
		hspd += accel	
	} else {
		hspd = hspd_max
	}

    image_xscale = 1									//flip the sprite to face right
    if grounded{										//only change to walking sprite if on the ground
        sprite_index= spr_snowman_run
		for(var i = 0; i< 2; i++){
			instance_create_depth(x,y,0,Particles)
		}
    }
	
}else{		
	//if not pressing either direction..
    if grounded{
		hspd = lerp(hspd, 0, .2)						//..and on the ground.. slow me
        sprite_index= spr_snowman_idle					//..show idle animation!
    }
}



#endregion

#region jumping and falling

if keyboard_check_pressed(vk_space){
	jump_pressed = true
	alarm[1] = jump_pressed_timer
	
}

if grounded {							// if player is touching the ground or platform
	vspd = 0							// set our jump value to 0 so we don't move
	
}else{									
										// if player is NOT on the ground..
	if just_jumped{
		if keyboard_check(vk_space){	// ..allow player to hold the jump button for increased height
			jump_pressed = false
			
			if jumps_spent == 2{		 // for the second jump the maximum is smaller
				vspd = -jump_max_two
			}else{
				vspd = -jump_max
			}
			
		} else {
			just_jumped = false
			alarm[0] = 0
		}
	}
	
    if vspd > 0{						// use jump sprite for jump, fall sprite for fall!
        sprite_index= spr_snowman_jump
    }else{
        sprite_index= spr_snowman_fall
    }
	
	shake_amt_timer += 0.08
}

if jump_pressed and (grounded or jumps_spent < num_jump) {			//check for jump key only if we are on the ground, or have jumps left to use
    jump_pressed = false				// turn off our jump key, because we used it
	vspd = -jump_max					// set our jump value to its max to start the jump
	jumps_spent += 1					// spend a jump
	if jump_hold > 0{
		just_jumped = true
		alarm[0] = jump_hold
	}
	
	grounded=false						// we're not on the ground anymore! we jumped!
}

#endregion


#region movement and collisions

MoveCollide() // < - wow, big script!

//are we on the ground?
if(place_meeting(x, y+1, obj_platform)){
	alarm[2] = coyote_time				// while on a platform, hold this timer at maximum
	grounded = true
	jumps_spent = 0
	if (jump_flag){
		jump_flag = false
		ShakeScreen(shake_amt_timer*2,0.25)
		shake_amt_timer = 0
	}
	
} else {
	//grounded = false
	jump_flag = true

}
#endregion