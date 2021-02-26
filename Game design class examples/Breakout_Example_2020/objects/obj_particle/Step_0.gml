/// @description Insert description here
// You can write your code in this editor
x += xspd
y += yspd

yspd +=grav

//rotate
image_angle += rot_spd

//shrink 
image_xscale -=size_decay
image_yscale -=size_decay


//decide if we should destroy them
if (image_xscale <= 0 or image_yscale <= 0){
	instance_destroy()
}