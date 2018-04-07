skinnum = argument0
image_index = argument0
switch skinnum
{
	case 0: mycolor = c_red break;
	case 1: mycolor = c_white break;
	case 2: mycolor = c_green break;
	case 3: mycolor = c_yellow break;
	case 4: mycolor = c_purple break;
	case 5: mycolor = c_orange break;
	case 6: mycolor = c_blue break;
}
with(obj_server)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,COLOR_MATCHUP) //2
			buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
			buffer_write(buffer,buffer_u8,other.skinnum) //2 x y skin
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}
with(obj_client)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,COLOR_MATCHUP) //2
			buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
			buffer_write(buffer,buffer_u8,other.skinnum) //2 x y skin
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}