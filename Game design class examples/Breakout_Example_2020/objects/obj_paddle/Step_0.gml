/// @description Insert description here
// You can write your code in this editor

if !global.GAME_BEGIN{
	if keyboard_check_pressed(vk_space){
		global.GAME_BEGIN = true
		instance_create_depth(x,y-32,0,obj_ball)
	}
}


if keyboard_check(vk_right){
	xspd = mspd	
	scale_x = lerp(scale_x,1.5,.2)
	scale_y = lerp(scale_y,.75,.2)
	
}
if keyboard_check(vk_left){
	xspd = -mspd
	scale_x = lerp(scale_x,2,.2)
	scale_y = lerp(scale_y,.75,.2)
}

if (!keyboard_check(vk_right) and !keyboard_check(vk_left)){
	xspd = 0
	scale_x = lerp(scale_x,1,.2)
	scale_y = lerp(scale_y,1,.2)
}

//image_xscale = scale_x
//image_yscale = scale_y
MoveCollide()

