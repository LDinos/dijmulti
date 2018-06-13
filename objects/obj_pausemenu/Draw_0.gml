/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite(spr_pauseindicator,control,x,y)
draw_sprite(spr_greenbar,round(global.VolVO * 20),x - sprite_width + 416, y - sprite_height + 304)
draw_sprite(spr_greenbar,round(global.VolMus * 20),x - sprite_width + 416, y - sprite_height + 304 - 64)
draw_sprite(spr_greenbar,round(global.VolFX * 20),x - sprite_width + 416, y - sprite_height + 304 - 128)
draw_text(x-128,y-64,string(display_get_sleep_margin()))