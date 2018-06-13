room_speed = 60
draw_texture_flush()
randomise()
show_debug_overlay(true)

//RADIO\\

if timer.time <= 60 obj_radio.music = mus_1min
else obj_radio.music = mus_3min
obj_radio.loop = false