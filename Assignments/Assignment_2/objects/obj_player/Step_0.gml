/// @description Insert description here
// You can write your code in this editor




if (not dead){
	if (keyboard_check(vk_space)){
		sprite_index = UP
		y -= 7.5
		fspd = 0
		
	}else{
		sprite_index = down
	}
	if (y >= room_height - sprite_height){
		y = room_height - sprite_height
	}
	else if (y <= sprite_height-70){
		y = sprite_height-69
	}
	else{
		fspd += 0.25
		y += fspd
	}
	
	if (keyboard_check_pressed(ord("M"))){
		instance_create_depth(x + sprite_width/2, y, -1, Object_bullet)
	}
	
}

var hit_block = instance_place(x,y,Block)

var hit_enemy = instance_place(x,y, Object_enemy)

if ((hit_block or hit_enemy) & not dead){
	global.livess -= 1
	dead = true
	dead_timer = 0.3 * room_speed
	if (hit_enemy){
		instance_destroy(hit_enemy)
	}
}

if (dead_timer > 0){
	dead_timer--
}
else{
	dead = false
}



