/// @description checking for condition first
// You can write your code in this editor
if i <= global.board_rows-1
{
	for(j=0;j<=7;j++)
	{
		instance_destroy(Gamerule_1.gem_board1[i,j])
	}
	i++
	alarm[0] = 10
}
else
{
	Gamerule_1.gameover = true

		if Gamerule_2.gameover
		{
			audio_play_sound(vo_gameover,0,0)
			create_text(spr_gameover,"stayer")
			alarm[1] = 240
		}

}