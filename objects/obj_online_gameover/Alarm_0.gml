/// @description checking for condition first
// You can write your code in this editor
if i <= global.board_rows-1
{
	for(j=0;j<=7;j++)
	{
		instance_destroy(gamerule.gem_board1[i,j])
	}
	i++
	alarm[0] = 10
}
else
{
	amover = true
	with(obj_server)
	{
		//buffer = buffer_create(1024,buffer_fixed,1)
		buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_u8,IAMOVER)
		network_send_packet(client_socket,buffer,buffer_tell(buffer))
		//buffer_delete(buffer)
	}
	with(obj_client)
	{
		//buffer = buffer_create(1024,buffer_fixed,1)
		buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_u8,IAMOVER)
		network_send_packet(client_socket,buffer,buffer_tell(buffer))
		//buffer_delete(buffer)
	}
}