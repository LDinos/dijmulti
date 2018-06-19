/// @description kill blazing speed
// You can write your code in this editor
blazingspeedchain = 1
blazingspeed = false
with(Board_2) sprite_index = default_skin

with(obj_client)
{
	//buffer = buffer_create(1024,buffer_fixed,1)
	buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,BOARD_LIGHTDOWN)
	network_send_packet(client_socket,buffer,buffer_tell(buffer))
	//buffer_delete(buffer)
}