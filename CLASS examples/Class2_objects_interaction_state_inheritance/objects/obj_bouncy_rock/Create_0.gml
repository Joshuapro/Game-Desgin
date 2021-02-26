/// @description Insert description here
// You can write your code in this editor

// Inherited from obj_rock.
//event_inherited reaches into the parent object (set in the properties window)
//and calls its version of this event.
event_inherited();

//then we add some additional stuff, just for the bouncy child
xspd = 0
alarm[0] = 1 * room_speed