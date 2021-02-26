if (room == rm_game){
	draw_sprite_ext(spr_snowman_bg,0,0,0,1,1,0,c_white,1)
}
if (room == Level_2){
	draw_sprite_ext(greenie,0,0,0,1,1,0,c_white,1)
}


if (global.livess){
	draw_set_color(c_yellow)
	draw_text(10,2, "LIVES: " + string(global.livess))
}
