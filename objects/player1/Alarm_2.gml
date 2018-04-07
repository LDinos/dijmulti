/// @description Match animation - after
// You can write your code in this editor
	flag = false
	gemtoexplode1 = noone
	gemtoexplode2 = noone
	with(gemtomove1)
		{
			with(obj_server)
			{
				buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
				buffer_write(buffer,buffer_u8,SEND_XY) //2
				buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
				buffer_write(buffer,buffer_s8,other._i) //2 x y skin creation_id
				buffer_write(buffer,buffer_s8,other._j) //2 x y skin creation_id
				network_send_packet(client_socket,buffer,buffer_tell(buffer))
			}
		}
	with(gemtomove2)
		{
			with(obj_server)
			{
				buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
				buffer_write(buffer,buffer_u8,SEND_XY) //2
				buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
				buffer_write(buffer,buffer_s8,other._i) //2 x y skin creation_id
				buffer_write(buffer,buffer_s8,other._j) //2 x y skin creation_id
				network_send_packet(client_socket,buffer,buffer_tell(buffer))
			}
		}
	with(gemtomove1) check_ifmatch(Gem_1)
	with(gemtomove2) check_ifmatch(Gem_1)
	if flag
	{
		if !Gamerule_1.blazingspeed
		{
			Gamerule_1.blazingshouldup = true
			//with(Gamerule_1) blazing_check()
			//Gamerule_1.blazingspeedchain++
			//Gamerule_1.blazingcounter = 140
		}
		else
			{
				with(gemtoexplode1) amexplode = true
				with(gemtoexplode2) amexplode = true
			}
		Gamerule_1.moving = false
		with(obj_avalanchespawner) event_user(0)
		with(gemtomove1) {unspin(); with(myfriend) matchnear = false; alarm[2] = 2}
		with(gemtomove2) {unspin(); with(myfriend) matchnear = false; alarm[2] = 2}
	}
	else
	{
		//Gamerule_1.blazingspeedchain = 0
		//Gamerule_1.blazingcounter = 140
		if instance_exists(gemtomove1) && instance_exists(gemtomove2)
		{
			temp = gemtomove1
			gemtomove1 = gemtomove2
			gemtomove2 = temp
			do_match_turnback(Gamerule_1)
		}
		else Gamerule_1.moving = false
	}
	
	/*with(gemtomove1) {unspin(); with(myfriend) matchnear = false; ammoving = false} */gem1 = noone 
	/*with(gemtomove2) {unspin(); with(myfriend) matchnear = false; ammoving = false} */gem2 = noone 
