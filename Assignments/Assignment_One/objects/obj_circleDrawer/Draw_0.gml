/// @description runs ever frame (after step)... use this for drawing and graphics related functionality.
draw_set_color(color_bk)
draw_rectangle(0,0,room_width,room_height,false)

//drawing sun if background is white
if (color_bk == c_white){
	draw_set_color(c_yellow)
	draw_circle(room_width,0,160,false)
	draw_line_color(room_width-200,20,room_width-300,40,c_yellow,c_yellow)
	draw_line_color(room_width-180,65,room_width-300,100,c_yellow,c_yellow)
	draw_line_color(room_width-160,110,room_width-270,170,c_yellow,c_yellow)
	draw_line_color(room_width-120,150,room_width-230,240,c_yellow,c_yellow)
	draw_line_color(room_width-70,200,room_width-150,300,c_yellow,c_yellow)
	
}



//drawing objects
draw_set_color(c_orange)
draw_triangle(tri_x,tri_y-120,tri_x-60,tri_y+60,tri_x+60,tri_y+60,false)
draw_set_color(c_teal)
draw_rectangle(rec_x-50,rec_y-30, rec_x+150,rec_y+30,false)
draw_set_color(c_green)
draw_text(text_x,text_y,"Assignment 1 XD")
draw_set_color(c_red)
draw_ellipse(eli_x-50,eli_y-100,eli_x+40,eli_y+100,true)

