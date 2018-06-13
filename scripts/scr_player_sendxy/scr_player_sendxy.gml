///@param obj_(server/client)
///@param CONSTANT
///@param player(1/2)
/*SERVER ONLY--------------------------*/
with(argument0)
{
	//buffer = buffer_create(1024,buffer_fixed,1)
	buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,argument1)
	buffer_write(buffer,buffer_u8,argument2.xlim)
	buffer_write(buffer,buffer_u8,argument2.ylim)
	buffer_write(buffer,buffer_u8,argument2.xlimprevious)
	buffer_write(buffer,buffer_u8,argument2.ylimprevious)
	network_send_packet(client_socket,buffer,buffer_tell(buffer))
}
/*SERVER ONLY--------------------------*/	