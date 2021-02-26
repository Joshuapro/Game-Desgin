/// @description Insert description here
// You can write your code in this editor
x += mspd

var hitEn = instance_place(x,y,Object_enemy)
if (instance_exists(hitEn)){
	instance_destroy(hitEn)
	instance_destroy()
	global.scores += 5
}