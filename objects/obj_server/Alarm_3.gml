/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_standby)
Gamerule_1.controlallowed = true
audio_play_sound(vo_go,0,0)
instance_create(640,552,timer)
instance_create(640,1104,obj_glassbar)
instance_create(x,y,obj_radio)
//RADIO\\
if timer.time <= 60 obj_radio.music = mus_1min
else obj_radio.music = mus_3min
obj_radio.loop = false
//-----------\\
buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
buffer_write(buffer,buffer_u8,STARTGAME)
network_send_packet(client_socket,buffer,buffer_tell(buffer))