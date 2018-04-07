/// @description Insert description here
// You can write your code in this editor
draw_self()
if multi_alpha > 0
{
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_boardglow,0,x,y,1,1,0,c_yellow,multi_alpha)
	gpu_set_blendmode(bm_add)
	multi_alpha -= 0.01
}
