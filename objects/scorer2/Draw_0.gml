/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite(spr_scorer2_1,win[0],x,y)
draw_sprite(spr_scorer2_2,win[1],x,y)
draw_sprite(spr_scorer2_3,win[2],x,y)
draw_sprite(spr_scorer2_front,0,x,y)
draw_set_font(fnt_open24display)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x-218,y+30,Gamerule_2.points)
draw_text(x-218,y+30 + 32*1,Gamerule_2.matches)
draw_text(x-218,y+30 + 32*2,Gamerule_2.style)
draw_set_font(font2)
