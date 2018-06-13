/// @description Insert description here
// You can write your code in this editor
if MyGamerule.OPT_lightallowed && shader_is_compiled(shd_bright_contrast)
{
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