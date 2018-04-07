var n_id = ds_map_find_value(async_load, "id");

if n_id == server_socket
    {
	//
    var t = ds_map_find_value(async_load, "type");
    switch(t)
        {
        case network_type_connect:
            var sock = ds_map_find_value(async_load, "socket")
            client_socket = sock
			client_connected = true
			audio_play_sound(vo_getready,0,0)
			alarm[0] = 1
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,USERNAME)
			buffer_write(buffer,buffer_string,global.username)
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			Gamerule_1.controlallowed = false
			instance_create_depth(632,824,-20,obj_standby)
			alarm[2] = 120
			//buffer_delete(buffer)

            break;
        case network_type_disconnect:
			alarm[0] = -1
			ping = 0
            client_socket = noone
			client_connected = false
			room_goto(rm_multi)
            break;
        case network_type_data:
            //Data handling here...
			ip = ds_map_find_value(async_load, "ip");
			var buffer2 = ds_map_find_value(async_load, "buffer")
			buffer_seek(buffer2,buffer_seek_start,0)
			scr_recieved_packet(buffer2)
            break;
        }
    }
else
{
	var t = ds_map_find_value(async_load, "type");
    switch(t)
	{
		case network_type_data:
            //Data handling here...
			var buffer2 = ds_map_find_value(async_load, "buffer")
			buffer_seek(buffer2,buffer_seek_start,0)
			scr_recieved_packet(buffer2)
            break;
	}
}