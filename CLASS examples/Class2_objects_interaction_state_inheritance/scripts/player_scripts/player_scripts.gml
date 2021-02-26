// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkIsBetween(_num, _min, _max){

	return (_num > _min and _num < _max)

}

function shoot() {
	if (keyboard_check_pressed(ord("Z"))){
		instance_create_depth(x, y - sprite_height/2, -1, obj_bullet)	
	}
}