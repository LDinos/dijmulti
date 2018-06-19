/// @description Insert description here
// You can write your code in this editor
if !Gamerule_2.IsGemActive && !Gamerule_2.lightOn && Gamerule_2.spawnallowed && !Gamerule_2.flameon
{
	with(Gamerule_2) check_gaps(Board_2)
	for(j=0;j<=7;j++)
	{
		if Gamerule_2.gaps[j] > 0 && !collision_line( Board_2.x + j*64, Board_2.y-64, Board_2.x + j*64, Board_2.y+4, Gem_2, false, true ) && !position_meeting(Board_2.x + j*64, Board_2.y, gem_dissappear2)
		{			
if room = rm_avalanche
	{
		if obj_avalanchedeposit.hidden_gems > 0
		{
			//avalanche only//
			with(obj_avalanchedeposit) 
			{
				hidden_gems--
			}
			//--------------//
			Gem_create = instance_create_depth(Board_2.x + j*64,Board_2.y-64,-1,Gem_2)
			with(Gem_create) //set same speed
				{
					take_othervsp = true //take other vsp if its not glitching
					if instance_place(x,y,collider)
					{
						take_othervsp = false //take other vsp if its not glitching
						do y--
						until !instance_place(x,y,collider)
					}
					if take_othervsp = true
					{
						l = 1
						found = false
						do
							{
								gemtofind = instance_position(x,y + l*64, Gem_2)
								if gemtofind != noone
									{
										acc = gemtofind.acc
										found = true
									}
								l++
							}
						until l > 8 || found = true
					}
				}
			if Gamerule_2.summoves2 = 0
				{
					spawn_script(Gamerule_2,Gem_2)
				}
		}
	}
	else
	{
		acctosend = 0
		Gem_create = instance_create_depth(Board_2.x + j*64,Board_2.y-64,-1,Gem_2)
		idtosend1 = Gem_create.myid
			with(Gem_create) //set same speed
				{
					take_othervsp = true
					if instance_place(x,y,collider)
					{
						take_othervsp = false
						do y--
						until !instance_place(x,y,collider)
					}
					if take_othervsp = true
					{
						l = 1
						found = false
						do
							{
								gemtofind = instance_position(x,y + l*64, Gem_2)
								if gemtofind != noone
									{
										acc = gemtofind.acc
										found = true
									}
								l++
							}
						until l > 8 || found = true
					}
				}
					with(obj_client)
					{
						//buffer = buffer_create(1024,buffer_fixed,1)
						buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
						buffer_write(buffer,buffer_u8,GEM_ACC) //2
						buffer_write(buffer,buffer_u8,other.idtosend1) //2 x y skin creation_id
						buffer_write(buffer,buffer_u8,other.acctosend)
						network_send_packet(client_socket,buffer,buffer_tell(buffer))
						//buffer_delete(buffer)
					}
			if Gamerule_2.summoves2 = 0 && !havedone
				{
					spawn_script(Gamerule_2,Gem_2)
				}
	}
		}

	}
}