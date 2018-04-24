/// @description blazing speed countdown
// You can write your code in this editor
if !blazingspeed && IsGemActive
{
	if blazingspeedchain > 0 && blazingspeedchain < 15
	{
		if blazingcounter > 0 blazingcounter--
		else blazingspeedchain = 0
	}
	else if blazingspeedchain >= 15
	{
		blazingspeed = true
		audio_play_sound(vo_blazingspeed,0,0)
		audio_play_sound(snd_blazingspeed,0,0)
		with(Board_1)
		{
			default_skin = sprite_index
			sprite_index = spr_board_blazing	
		}
		alarm[4] = 600
		with(obj_server)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,BOARD_LIGHTUP)
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}
	}
}
alarm[3] = 1