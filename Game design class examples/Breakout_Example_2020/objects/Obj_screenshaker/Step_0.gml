/// @description Insert description here
// You can write your code in this editor

if (shake_timer >0){
	
	shake_timer--
	
	shake_x = random_range(-shake_amt,shake_amt)
	shake_y = random_range(-shake_amt,shake_amt)
	
	camera_set_view_pos(view_camera[0],shake_x,shake_y)
	
	
} else {
	
	camera_set_view_pos(view_camera[0],0,0)
	
}