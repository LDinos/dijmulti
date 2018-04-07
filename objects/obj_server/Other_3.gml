/// @description Insert description here
// You can write your code in this editor
buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer,buffer_u8,ENDGAME)
network_send_packet(client_socket,buffer,buffer_tell(buffer))
network_destroy(server_socket)