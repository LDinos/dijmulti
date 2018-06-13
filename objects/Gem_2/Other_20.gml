/// @description Server gem stuck
// You can write your code in this editor
with(MyNet)
{
	buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,SEND_XY) //2
	buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
	buffer_write(buffer,buffer_s8,other._i) //2 x y skin creation_id
	buffer_write(buffer,buffer_s8,other._j) //2 x y skin creation_id
	network_send_packet(client_socket,buffer,buffer_tell(buffer))
}