/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("S"))){
	if (room == HOMESTART){
		room = PLAY
	}
}


if (keyboard_check(ord("R"))){
	if (room == END){
		room = HOMESTART
		
	}
}

if (room == PLAY){
	if (global.livess == 0){
		room = END
		global.livess = 3
	}
}
