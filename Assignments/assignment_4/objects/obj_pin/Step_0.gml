/// @description Insert description here
// You can write your code in this editor

if (timer >=0){
	timer--
}else{
	move = true
	timer = 2 * room_speed
}

if (move){
	if(up){
		y++
		if(abs(movement - y) >= 30){
			move = false
			up = !up
		}
	}
	if(!up){
		y--
		if (movement-y = 0){
			move = false
			up = !up
		}
	}

}


