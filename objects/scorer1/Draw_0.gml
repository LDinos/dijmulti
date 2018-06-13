/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite(spr_scorer1_1,win[0],x,y)
draw_sprite(spr_scorer1_2,win[1],x,y)
draw_sprite(spr_scorer1_3,win[2],x,y)
draw_sprite(spr_scorer1_front,0,x,y)
draw_set_font(fnt_open24display)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x+218,y+30,Gamerule_1.points)
draw_text(x+218,y+30 + 32*1,Gamerule_1.matches)
draw_text(x+218,y+30 + 32*2,Gamerule_1.style)
draw_set_font(font2)
