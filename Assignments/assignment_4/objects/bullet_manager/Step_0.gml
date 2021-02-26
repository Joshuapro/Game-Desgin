/// @description Insert description here
// You can write your code in this editor
if (sleep){
	time--
}else{
	instance_create_depth(1088,736,0,Bullet)
	instance_create_depth(0,640,0,Bullet)
	instance_create_depth(760,128,0,FallBullet)
	instance_create_depth(500,215,0,Bullet)
	instance_create_depth(500,200,0,Bullet)
	instance_create_depth(500,500,0,Bullet)
	instance_create_depth(475,530,0,Bullet)
	time = 3 * room_speed
	sleep = true
}

if (time == 0){
	sleep = false
}






