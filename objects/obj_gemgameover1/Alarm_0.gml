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
	if !instance_exists(obj_server)
	{
		if Gamerule_2.gameover
		{
			audio_play_sound(vo_gameover,0,0)
			create_text(spr_gameover,"stayer")
			alarm[1] = 240
		}
	}
	else
	{
		if !obj_lasthur1.otherplayeralreadyover
		{
			with(obj_server)
			{
				buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
				buffer_write(buffer,buffer_u8,IAMOVER)
				network_send_packet(client_socket,buffer,buffer_tell(buffer))
			}
		}
		else
		{
			audio_play_sound(vo_gameover,0,0)
			create_text(spr_gameover,"stayer")
			alarm[1] = 240
			with(obj_server)
			{
				buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
				buffer_write(buffer,buffer_u8,GAMEISOVER)
				network_send_packet(client_socket,buffer,buffer_tell(buffer))
			}
		}
	}
}