/// @description Insert description here
// You can write your code in this editor
ping = round((pingcounter/room_speed)*1000)
buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer,buffer_u8,PING)
buffer_write(buffer,buffer_u16,ping)
network_send_packet(client_socket,buffer,buffer_tell(buffer))
if ping >= 8000 room_goto(rm_multi)
alarm[1] = 30