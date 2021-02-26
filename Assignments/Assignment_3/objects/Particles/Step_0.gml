
if (not global.left){
	x += xspdl
	y += yspdl
}else{
	x += xspdr
	y += yspdr
}


yspdr += grav
yspdl += grav


image_angle += rot_spd

image_xscale -=size_decay
image_yscale -=size_decay

if (image_xscale <= 0 or image_yscale <= 0){
	instance_destroy()
}