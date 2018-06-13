/// @description CREATE GEM ON SERVER
// You can write your code in this editor
if instance_exists(MyNet) && myid = -4
{
	i = 0
	do
	{
		if global.gemlist[i] == noone
		{
			global.gemlist[i] = i
			myid = i
		}
		i++
	}
	until (myid != -4) || i > 63
}

with(MyNet)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,GEM_CREATION) //2
			buffer_write(buffer,buffer_s8,other._i)
			buffer_write(buffer,buffer_s8,other._j)
			buffer_write(buffer,buffer_s8,other.acc)
			buffer_write(buffer,buffer_u8,other.skinnum) //2 x y skin
			buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
			buffer_write(buffer,buffer_u8,other.gempower) //2 x y skin creation_id
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}