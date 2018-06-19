/// @description Insert description here
if !doonce
{
	if global.ONLINE_OVER = 1 && amover
	{
				audio_play_sound(vo_gameover,0,0)
				create_text(spr_gameover,"stayer")
				alarm[1] = 240
				doonce = true
	}
}