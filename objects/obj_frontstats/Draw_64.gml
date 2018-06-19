/// @description Insert description here
draw_set_font(FBIBIG)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text(9*32,yy,global.user1)
draw_text(1280 - 9*32,yy,global.user2)
draw_text_color(9*32,4*32,text1,c1,c1,c1,c1,alpha)
draw_text_color(1280 - 9*32,4*32,text2,c2,c2,c2,c2,alpha)

//Center text
draw_set_font(font0)
draw_text_color(room_width/2,room_height/2 - 128 + 0*48, "Number of Points",c_white,c_white,c_white,c_white,alpha)
draw_text_color(room_width/2,room_height/2 - 128 + 1*48, "Number of Matches",c_white,c_white,c_white,c_white,alpha-1)
draw_text_color(room_width/2,room_height/2 - 128 + 2*48, "Number of Style Points",c_white,c_white,c_white,c_white,alpha-2)
draw_text_color(room_width/2,room_height/2 - 128 + 3*48, "Maximum Multiplier",c_white,c_white,c_white,c_white,alpha-3)
draw_text_color(room_width/2,room_height/2 - 128 + 4*48, "Matches per second",c_white,c_white,c_white,c_white,alpha-4)
draw_text_color(room_width/2,room_height/2 - 128 + 5*48, "Biggest Cascade",c_white,c_white,c_white,c_white,alpha-5)

//Left text
draw_text_color(9*32,room_height/2 - 128 + 0*48, global.ST_points[0],c_white,c_white,c_white,c_white,alpha)
draw_text_color(9*32,room_height/2 - 128 + 1*48, global.ST_matches[0],c_white,c_white,c_white,c_white,alpha-1)
draw_text_color(9*32,room_height/2 - 128 + 2*48, global.ST_style[0],c_white,c_white,c_white,c_white,alpha-2)
draw_text_color(9*32,room_height/2 - 128 + 3*48, "x" + string(global.ST_xplier[0]),c_white,c_white,c_white,c_white,alpha-3)
draw_text_color(9*32,room_height/2 - 128 + 4*48, mps1,c_white,c_white,c_white,c_white,alpha-4)
draw_text_color(9*32,room_height/2 - 128 + 5*48, global.ST_bestcombo[0],c_white,c_white,c_white,c_white,alpha-5)

//righttext 
draw_text_color(1280 -9*32,room_height/2 - 128 + 0*48, global.ST_points[1],c_white,c_white,c_white,c_white,alpha)
draw_text_color(1280 -9*32,room_height/2 - 128 + 1*48, global.ST_matches[1],c_white,c_white,c_white,c_white,alpha-1)
draw_text_color(1280 -9*32,room_height/2 - 128 + 2*48, global.ST_style[1],c_white,c_white,c_white,c_white,alpha-2)
draw_text_color(1280 -9*32,room_height/2 - 128 + 3*48, "x" + string(global.ST_xplier[1]),c_white,c_white,c_white,c_white,alpha-3)
draw_text_color(1280 -9*32,room_height/2 - 128 + 4*48, mps2,c_white,c_white,c_white,c_white,alpha-4)
draw_text_color(1280 -9*32,room_height/2 - 128 + 5*48, global.ST_bestcombo[1],c_white,c_white,c_white,c_white,alpha-5)

//coins
draw_set_halign(fa_left)
draw_text_color(room_width/2,128-32,"+" + string(coinstogive),c_yellow,c_yellow,c_yellow,c_yellow,alpha2)
draw_set_blend_mode(bm_add)
draw_sprite(spr_coin,image_index,room_width/2 - 36,128)
draw_set_blend_mode(bm_normal)
draw_text_color(room_width/2 -12 ,128,coins,c_orange,c_orange,c_orange,c_orange,1)