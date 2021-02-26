/// @description Insert description here
// You can write your code in this editor
MoveCollide()

if (hit){
	scale_x = 2
	scale_y = 2
	hit = false
}

scale_x = lerp(scale_x,1,0.15)
scale_y = lerp(scale_y,1,0.15)

spawpart(x,y,5)
/*
if collision_circle(x,y,8,obj_block,false,false){
	near_block = instance_nearest(x,y,obj_block)
	near_block.block_health -=1
	
}