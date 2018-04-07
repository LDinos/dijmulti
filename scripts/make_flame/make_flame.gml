with(obj_avalanchespawner) gemsdestroyed++
with(obj_avalanchedeposit) 
{
	if hidden_gems != 0 hidden_gems--
	gems_to_send++
}
gl = instance_create(x,y,gem_glow)
with(gl) {image_index = other.skinnum; depth = other.depth-1}

if gempower = 0 && !amexplode
    {
        gempower = 1
        //gemout = instance_create(x,y,obj_gemoutlines)
        //gemout.image_index = skinnum
        amPowered = true
		if amMulti 
		{
			amMulti = false
			event_user(0)
		}
		if amTimeGem
		{
			if instance_position(x,y,Gem_1) != noone addup_timegem(Gamerule_1,TimeGem)
			else addup_timegem(Gamerule_2,TimeGem)
			if TimeGem = 5 audio_play_sound(snd_lightning_fill5,0,0)
			else audio_play_sound(snd_lightning_fill10,0,0)
			amTimeGem = false
		}
		
		with(obj_server)
		{
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,MAKEPOWER) //2
			buffer_write(buffer,buffer_u8,other.myid)
			buffer_write(buffer,buffer_u8,other.gempower)
			buffer_write(buffer,buffer_bool,other.amTimeGem)
			buffer_write(buffer,buffer_bool,other.amMulti)
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
		}
		with(obj_client)
		{
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,MAKEPOWER) //2
			buffer_write(buffer,buffer_u8,other.myid)
			buffer_write(buffer,buffer_u8,other.gempower)
			buffer_write(buffer,buffer_bool,other.amTimeGem)
			buffer_write(buffer,buffer_bool,other.amMulti)
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
		}
    }
else 
    {
		if amexplode
			{
				explode(argument0)
				amexplode = false
			}
        newflame = instance_create(x,y,argument0)
        newflame.skinnum = skinnum
        newflame.image_index = skinnum
        newflame.gempower = 1
		idtosend = newflame.myid
		powertosend = newflame.gempower
        with(newflame)
        { 
			amPowered = true
        }
        //gemout = instance_create(x,y,obj_gemoutlines)
        //gemout.image_index = newflame.skinnum
		with(obj_server)
		{
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,MAKEPOWER) //2
			buffer_write(buffer,buffer_u8,other.idtosend)
			buffer_write(buffer,buffer_u8,other.powertosend)
			buffer_write(buffer,buffer_bool,false)
			buffer_write(buffer,buffer_bool,false)
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
		}
		with(obj_client)
		{
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,MAKEPOWER) //2
			buffer_write(buffer,buffer_u8,other.idtosend)
			buffer_write(buffer,buffer_u8,other.powertosend)
			buffer_write(buffer,buffer_bool,false)
			buffer_write(buffer,buffer_bool,false)
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
		}
		instance_destroy()

        
    }

