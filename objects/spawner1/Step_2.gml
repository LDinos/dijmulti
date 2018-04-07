/// @description Insert description here
// You can write your code in this editor
if !Gamerule_1.IsGemActive && !Gamerule_1.lightOn && Gamerule_1.spawnallowed && !Gamerule_1.flameon
{
	for(j=0;j<=7;j++)
	{
		if Gamerule_1.gaps[j] > 0 && !collision_line( Board_1.x + j*64, Board_1.y-64, Board_1.x + j*64, Board_1.y+4, Gem_1, false, true ) && !position_meeting(Board_1.x + j*64, Board_1.y, gem_dissappear)// && !position_meeting(Board_1.x + j*64, Board_1.y, stopper)
		{
			canspawn = true 
			with(obj_avalanchedeposit) {if hidden_gems > 0 other.canspawn = true else other.canspawn = false}
			if canspawn
				{
					//avalanche only//
					with(obj_avalanchedeposit) 
					{
						hidden_gems--
					}
					//--------------//
					Gem_create = instance_create_depth(Board_1.x + j*64,Board_1.y-64,-1,Gem_1)
					acctosend = 0
					idtosend1 = Gem_create.myid
					with(Gem_create) //set same speed
						{
							take_othervsp = true //take other vsp if its not glitching
							//unglitch
							if instance_place(x,y,collider)
							{
								take_othervsp = false
								do y--
								until !instance_place(x,y,collider)
							}
							if take_othervsp//get same vertical speed
							{
								l = 1
								found = false
								do
									{
										gemtofind = instance_position(x,y + l*64, Gem_1)
										if gemtofind != noone
											{
												acc = gemtofind.acc
												other.acctosend = acc
												found = true
											}
										l++
									}
								until l > 8 || found = true
							}
						}
					with(obj_server)
						{
							//buffer = buffer_create(1024,buffer_fixed,1)
							buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
							buffer_write(buffer,buffer_u8,GEM_ACC) //2
							buffer_write(buffer,buffer_u8,other.idtosend1) //2 x y skin creation_id
							buffer_write(buffer,buffer_u8,other.acctosend)
							network_send_packet(client_socket,buffer,buffer_tell(buffer))
							//buffer_delete(buffer)
						}
					if Gamerule_1.summoves2 = 0 && !havedone
						{
							spawn_script(Gamerule_1,Gem_1)
						}
				}		
		}

	}
}