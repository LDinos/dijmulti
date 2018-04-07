/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_glue,imageindex,x,y-16,1,lerp(0,15.5,time/timedefault),0,c_white,1)
if time > 0 draw_sprite(spr_glue1,imageindex,x,y+24 - 32*lerp(0,15.5,time/timedefault))
draw_self()