/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)){
	
	if (room == rm_start){
		
		room = rm_game
		
	}else if (room == rm_end){
		
		room = rm_start	
		
	}
	
}

if (room == rm_game){

	if (global.player_lives <= 0){
		room = rm_end	
		global.player_lives = 3
	}

	//if we want to win
	if (instance_number(obj_rock) <= 0){
		room = rm_end
	}

}