/// @description Insert description here
// You can write your code in this editor



if (keyboard_check(vk_left)){
	//move player character, but also make sure its facing
	//the correct direction, and using the walk animation.
	if (mspd > -max_spd){
		mspd -= acc
	}else{
		mspd = -max_spd
	}
	
	image_xscale = -1
	sprite_index = spr_player_walk
} 

if (keyboard_check(vk_right)){
	//same as above, but for the right!
	if (mspd < max_spd){
		mspd += acc
	}
	else{
		mspd = max_spd
	}
	
	image_xscale = 1
	sprite_index = spr_player_walk
	
}


if(!keyboard_check(vk_right) and !keyboard_check(vk_left)){
	sprite_index = spr_player_idle
	if (abs(mspd) > acc){
		mspd -= acc *sign(mspd)
	}
	else{
		mspd = 0
	}
}



image_speed = abs(mspd)/max_spd

x += mspd