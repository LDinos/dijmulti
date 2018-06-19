/// @description Insert description here
yy = lerp(0,2*32,power(func,2))
func+=0.05
if func <= 1 alarm[0] = 1
else {alarm[1] = 1;audio_play_sound(snd_screenprint,0,0)}