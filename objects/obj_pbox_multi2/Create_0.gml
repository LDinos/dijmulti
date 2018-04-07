/// @description Insert description here
// You can write your code in this editor
text = global.username
image_speed = 0
image_index = 1
length = string_length(text)
with(obj_client)
	{
		//buffer = buffer_create(1024,buffer_fixed,1)
		buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_u8,USERNAME) //we give the host our name and then pbox is created on host
		buffer_write(buffer,buffer_string,other.text)
		network_send_packet(client_socket,buffer,buffer_tell(buffer))
		//buffer_delete(buffer)
	}