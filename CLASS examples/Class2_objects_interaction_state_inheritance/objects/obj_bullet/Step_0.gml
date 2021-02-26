/// @description Insert description here
// You can write your code in this editor

//bullets are very simple. they move
y -= mspd

//and they destroy. smh
var hit_rock = instance_place(x,y,obj_rock)

if (instance_exists(hit_rock)) {
	instance_destroy(hit_rock)
	instance_destroy()
}