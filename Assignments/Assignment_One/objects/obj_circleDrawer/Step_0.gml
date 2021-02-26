/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_space)){
	text_y = room_height/2
	text_x = room_width/2
	rec_y = room_height/2
	rec_x = room_width/2
	tri_y = room_height/2
	tri_x = room_width/2
	eli_y = room_height/2
	eli_x = room_width/2
}
if (mouse_check_button_released(mb_left)){
	if(color_bk == c_black){
		color_bk = c_white
	}
	else{
		color_bk = c_black
	}
}
text_y += 0.3
text_x -= 0.3
eli_y += 1
eli_x += 0.5
tri_x -= 1
tri_y -= 1
rec_x += 2.7
rec_y -= 2

