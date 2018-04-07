/// @description Match animation - after
// You can write your code in this editor
	flag = false
	gemtoexplode1 = noone
	gemtoexplode2 = noone
	with(gemtomove1)
	{
	with(obj_client)
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
	with(obj_client)
		{
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,SEND_XY) //2
			buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
			buffer_write(buffer,buffer_s8,other._i) //2 x y skin creation_id
			buffer_write(buffer,buffer_s8,other._j) //2 x y skin creation_id
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
		}
	}
		
	with(gemtomove1) check_ifmatch(Gem_2)
	with(gemtomove2) check_ifmatch(Gem_2)
	if flag
	{
		if !Gamerule_2.blazingspeed
		{
			Gamerule_2.blazingshouldup = true
			//with(Gamerule_2) blazing_check()
			//Gamerule_2.blazingspeedchain++
			//Gamerule_2.blazingcounter = 140
		}
		else
			{
				with(gemtoexplode1) amexplode = true
				with(gemtoexplode2) amexplode = true
			}
		Gamerule_2.moving = false
		with(obj_avalanchespawner) event_user(0)
		with(gemtomove1) {unspin(); with(myfriend) matchnear = false; ammoving = false}
		with(gemtomove2) {unspin(); with(myfriend) matchnear = false; ammoving = false}
	}
	else
	{
		if instance_exists(gemtomove1) && instance_exists(gemtomove2)
		{
			temp = gemtomove1
			gemtomove1 = gemtomove2
			gemtomove2 = temp
			do_match_turnback(Gamerule_2)
		}
		else Gamerule_2.moving = false
	}

	 gem1 = noone 
	 gem2 = noone 
