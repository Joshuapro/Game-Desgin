function ShakeScreen(argument0, argument1) {
	amt = argument0
	dur = argument1

	obj_screenshake.shake_amt = amt
	obj_screenshake.shake_timer = dur * room_speed
	obj_screenshake.shake_on = true


}
