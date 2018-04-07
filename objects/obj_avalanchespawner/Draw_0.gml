/// @description Insert description here
// You can write your code in this editor
draw_set_font(font0)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(room_width/2,2.5*room_height/4,button + " TO PASS",0.8,0.8,0)
draw_text_transformed(room_width/2,2.5*room_height/4 - 64,"TURNS: " + string(obj_avalanchedeposit.num_turns),0.8,0.8,0)