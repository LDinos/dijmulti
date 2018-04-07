value = argument0*xplier + combo*50*xplier
points += value
if iam = Gamerule_1 with(obj_tug)
{
		p1_points += other.value
		p2_points -= other.value
}
else with(obj_tug)
{
		p2_points += other.value
		p1_points -= other.value
}

with(obj_server)
	{
		//buffer = buffer_create(1024,buffer_fixed,1)
		buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_u8,POINTS)
		buffer_write(buffer,buffer_u32,other.points)
		network_send_packet(client_socket,buffer,buffer_tell(buffer))
		//buffer_delete(buffer)
	}
with(obj_client)
	{
		//buffer = buffer_create(1024,buffer_fixed,1)
		buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_u8,POINTS)
		buffer_write(buffer,buffer_u32,other.points)
		network_send_packet(client_socket,buffer,buffer_tell(buffer))
		//buffer_delete(buffer)
	}
