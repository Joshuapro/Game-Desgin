/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_right)){
	if (hspd < max_spd){
		hspd += accel
	}
}

if (keyboard_check(vk_left)){
	if (hspd > -max_spd){
		hspd -= accel
	}
	
}

hspd = clamp()