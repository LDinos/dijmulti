///do_match(GAMERULE_INDEX)
// @param Gamerule
//Do the match animation, and set that gamerule to gemactive0
if argument0 = Gamerule_1 myid = Gem_1
else myid = Gem_2
idtosend1 = gemtomove1.myid
idtosend2 = gemtomove2.myid

ammoving = true
with(gemtomove1)
{
	create_collider(15)
	myfriend = instance_position(x,y-64,other.myid)
	with(myfriend) matchnear = true
}
with(gemtomove2)
{
	create_collider(15)
	myfriend = instance_position(x,y-64,other.myid)
	with(myfriend) matchnear = true
}
with(gemtomove1) ammoving = true
with(gemtomove1) ammoving = true
percent = 0
xx = gemtomove1.x
yy = gemtomove1.y
xx2 = gemtomove2.x
yy2 = gemtomove2.y
alarm[3] = 1

with(obj_server)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,GEM_MATCHUP) //2
			buffer_write(buffer,buffer_u8,other.idtosend1) //2 x y skin creation_id
			buffer_write(buffer,buffer_u8,other.idtosend2) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.xx) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.yy) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.xx2) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.yy2) //2 x y skin creation_id
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}
with(obj_client)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,GEM_MATCHUP) //2
			buffer_write(buffer,buffer_u8,other.idtosend1) //2 x y skin creation_id
			buffer_write(buffer,buffer_u8,other.idtosend2) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.xx) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.yy) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.xx2) //2 x y skin creation_id
			buffer_write(buffer,buffer_u16,other.yy2) //2 x y skin creation_id
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}