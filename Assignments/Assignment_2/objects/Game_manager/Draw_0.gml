/// @description Insert description here
// You can write your code in this editor
if (global.scores){score = global.scores}

if(room == HOMESTART){
	draw_text_color(room_width/2-150,room_height/2, "press s to start game",c_black,c_blue,c_red,c_gray,1);
	draw_text_color(room_width/2-150,room_height/2+50, "hold \"space\" to fly and \"m\" to shot",c_black,c_blue,c_red,c_gray,1);
	
}
if (room == PLAY){
	draw_set_color(c_blue)
	draw_text(10,10, "LIVES: " + string(global.livess))
	draw_set_color(c_lime)
	draw_text(10,40, "Score: " + string(global.scores))
	
}

if (room == END){
	draw_text(room_width/2,room_height/2+50, "Your score is " + string(score))
	draw_text(room_width/2,room_height/2-50, "PRESS R to play again!!!!!")
}