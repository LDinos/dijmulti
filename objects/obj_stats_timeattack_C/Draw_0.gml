/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite(spr_statsback,0,x,y)
draw_set_font(font0)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
for(i=0;i<10;i++)
{
	if i = ismyscore_points[0] color = c_blue
	else if i = ismyscore_points[1] color = c_red
	else color = c_white
	draw_text_color(4*8, 15*8 + i*48,string(i+1),color,color,color,color,alpha)
	draw_text_color(16*8, 15*8 + i*48,stats_name_points[i],color,color,color,color,alpha)
	draw_text_color(39*8, 15*8 + i*48,string(stats_points[i]),color,color,color,color,alpha)

	if i = ismyscore_matches[0] color = c_blue
	else if i = ismyscore_matches[1] color = c_red
	else color = c_white
	draw_text_color(4*8 + 424, 15*8 + i*48,string(i+1),color,color,color,color,alpha)
	draw_text_color(16*8 + 424, 15*8 + i*48,stats_name_matches[i],color,color,color,color,alpha)
	draw_text_color(39*8 + 424, 15*8 + i*48,string(stats_matches[i]),color,color,color,color,alpha)

	if i = ismyscore_style[0] color = c_blue
	else if i = ismyscore_style[1] color = c_red
	else color = c_white
	draw_text_color(4*8 + 424*2, 15*8 + i*48,string(i+1),color,color,color,color,alpha)
	draw_text_color(16*8 + 424*2, 15*8 + i*48,stats_name_style[i],color,color,color,color,alpha)
	draw_text_color(39*8 + 424*2, 15*8 + i*48,string(stats_style[i]),color,color,color,color,alpha)

}
