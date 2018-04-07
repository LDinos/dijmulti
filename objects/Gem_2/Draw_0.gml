/// @description Insert description here
// You can write your code in this editor
if Gamerule_1.OPT_lightallowed
{/*
	if gempower > 0
	{
		draw_sprite_ext(spr_gem_glow,skinnum,x,y,1,1,0,c_white,alpharand)
	}

	if amLit
	{
		gpu_set_blendmode(bm_add)
		draw_sprite(gemskins_,skinnum,x,y)
		gpu_set_blendmode(bm_normal)
	}*/
	if gempower > 0 || bloom
	{
		var value = random_range(.2,.4)
			shader_set(shd_bright_contrast);
		    shader_set_uniform_f(uni_time, var_time_var);
		    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
		    shader_set_uniform_f(uni_resolution, 64, 64);
		    shader_set_uniform_f(uni_brightness_amount, value);
		    shader_set_uniform_f(uni_contrast_amount, var_contrast_amount );
	}
	else if amLit
	{
		var value = 1
			shader_set(shd_bright_contrast);
		    shader_set_uniform_f(uni_time, var_time_var);
		    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
		    shader_set_uniform_f(uni_resolution, 64, 64);
		    shader_set_uniform_f(uni_brightness_amount, value);
		    shader_set_uniform_f(uni_contrast_amount, var_contrast_amount );
	}
	/*else if bloom
	{
			shader_set(shdr_bloom);
			shader_set_uniform_f(bloomIntensity,varbloom) //0 = off, 1 = a bit, 80 = extremely intense
			shader_set_uniform_f(bloomblurSize, 1/512);
	}*/
	
}
if spinning
{
	draw_self()
	draw_sprite(spr_gemselectglow,0,x,y)
}
else draw_sprite_ext(sprite_index,skinnum,x+xmover,y+ymover,image_xscale,image_yscale,0,c_white,1)

if amMulti
{
	draw_set_font(fnt_multi)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_sprite(spr_xplier,MyGamerule.xplier-1,x,y)
	draw_set_font(font0)
}
else if amTimeGem
{

	draw_set_font(fnt_multi)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	if TimeGem = 5 draw_sprite(spr_timeplier,0,x,y)
	else draw_sprite(spr_timeplier,1,x,y)
	draw_set_font(font0)
}
shader_reset()