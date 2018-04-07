/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite(spr_statsback,1,x,y)
draw_set_font(font0)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(room_width/2,32,"LIGHTNING")
for(i=0;i<10;i++)
{
	draw_text(4*8 +424, 15*8 + i*48,string(i+1))
	draw_text(16*8 +424, 15*8 + i*48,stats_name_points[i])
	draw_text(39*8 +424, 15*8 + i*48,string(stats_points[i]))
	draw_text(55*8 +424, 15*8 + i*48,"X"+string(stats_xplier[i]))
}
