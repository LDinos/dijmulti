/// @description Insert description here
// You can write your code in this editor
instance_create(x,y,spawner1)
//buffer = buffer_create(1024,buffer_fixed,1)
buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer,buffer_u8,INITIATE_SPAWN)
network_send_packet(client_socket,buffer,buffer_tell(buffer))
alarm[3] = irandom_range(6*60,9*60)
//buffer_delete(buffer)