///do_match(GAMERULE_INDEX)
// @param Gamerule
//Do the match animation, and set that gamerule to gemactive0
if argument0 = Gamerule_1 myid = Gem_1
else myid = Gem_2

ammoving = true
idtosend1 = gem1.myid
idtosend2 = gem2.myid
with(gem1)
{
	iprev = _i
	jprev = _j
	skinprev = skinnum
	create_collider(15)
	myfriend = instance_position(x,y-64,other.myid)
	with(myfriend) matchnear = true
}
with(gem2)
{
	iprev = _i
	jprev = _j
	skinprev = skinnum
	create_collider(15)
	myfriend = instance_position(x,y-64,other.myid)
	with(myfriend) matchnear = true
}
with(gem1) ammoving = true
with(gem2) ammoving = true
percent = 0
xx = gem1.x
yy = gem1.y
xx2 = gem2.x
yy2 = gem2.y
argument0.cursor_x1 = xlimprevious
argument0.cursor_x2 = xlim
argument0.cursor_y1 = ylimprevious
argument0.cursor_y2 = ylim
gemtomove1 = gem1
gemtomove2 = gem2
gem1 = noone
gem2 = noone
argument0.moving = true
alarm[1] = 1
with(argument0) combo = 0

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