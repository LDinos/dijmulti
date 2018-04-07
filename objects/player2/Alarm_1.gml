/// @description Match animation
// You can write your code in this editor
if instance_exists(gemtomove1) && instance_exists(gemtomove2)
{
	gemtomove1.x = lerp(xx,xx2,power(percent,2))
	gemtomove1.y = lerp(yy,yy2,power(percent,2))
	gemtomove2.x = lerp(xx2,xx,power(percent,2))
	gemtomove2.y = lerp(yy2,yy,power(percent,2))
	percent += 0.1

	if percent <= 1 alarm[1] = 1
	else
	{
		/*idtosend1 = gemtomove1.myid
		idtosend2 = gemtomove2.myid
		xxtosend = gemtomove1.x
		yytosend = gemtomove1.y
		xx2tosend = gemtomove2.x
		yy2tosend = gemtomove2.y
		with(obj_client)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,GEM_FIXXY) //2
			buffer_write(buffer,buffer_u8,other.idtosend1) //2 x y skin creation_id
			buffer_write(buffer,buffer_u8,other.idtosend2) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.xxtosend)
			buffer_write(buffer,buffer_u16,other.yytosend)
			buffer_write(buffer,buffer_u16,other.xx2tosend)
			buffer_write(buffer,buffer_u16,other.yy2tosend)	
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}*/
	alarm[2] = 5
	}
}
else 
{
	instance_destroy(gemtomove1)
	instance_destroy(gemtomove2)
	alarm[2] = 5
}