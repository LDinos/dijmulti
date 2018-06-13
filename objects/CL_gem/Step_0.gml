/// @description Insert description here
// You can write your code in this editor
var luck; 
if !ammoving && !lightOn
{
	#region OBSOLETE
	/*acc+=0.6	
		if (place_meeting(x,y+acc,CL_gem))
		{
			if acc !=0
			{
			    while(!place_meeting(x,y+sign(acc),CL_gem))
			    {
			        y+=sign(acc);
			    }

			}
			acc = 0
		}
		else if (place_meeting(x,y+acc,stopper))
		{
			if acc !=0
			{
			    while(!place_meeting(x,y+sign(acc),stopper))
			    {
			        y+=sign(acc);
			    }

			}
			acc = 0
		}
		else if (place_meeting(x,y+acc,gem_dissappear))
		{
			if acc !=0
			{
			    while(!place_meeting(x,y+sign(acc),gem_dissappear))
			    {
			        y+=sign(acc);
			    }

			}
			acc = 0
		}
	y+=acc*/
	#endregion
	
	acc+=0.6
			var toucher = collision_point(x,y+acc+(sprite_height/2),CL_gem,false,true)
			if toucher = noone toucher = collision_point(x,y+acc+(sprite_height/2),stopper,false,true)
			if toucher = noone toucher = collision_point(x,y+acc+(sprite_height/2),gem_dissappear,false,true)
			if (toucher != noone)
			{
				if toucher.acc = 0
				{
					acc = 0	
					y = toucher.y - toucher.sprite_yoffset - (sprite_height/2)//...find the other y, and depending on the y origin, move it exactly above it
				}
				else if acc >= toucher.acc
				{
					acc = toucher.acc - 0.6	
					y = toucher.y - toucher.sprite_yoffset - (sprite_height/2)//...find the other y, and depending on the y origin, move it exactly above it
				}
			}
			y+=acc
		
	#region if stuck OBSOLETE	
	/*if place_meeting(x,y,CL_gem) //if stuck
	{
		with(obj_server)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,REQUEST_XY) //2
			buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}
		with(obj_client)
		{
			//buffer = buffer_create(1024,buffer_fixed,1)
			buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
			buffer_write(buffer,buffer_u8,REQUEST_XY) //2
			buffer_write(buffer,buffer_u8,other.myid) //2 x y skin creation_id
			network_send_packet(client_socket,buffer,buffer_tell(buffer))
			//buffer_delete(buffer)
		}
	}*/
	#endregion
}

#region Particle effects
if gempower = 1
{
	part_particles_create(global.sys_below_gem,x,y,global.partFire,1)
	part_particles_create(global.sys_below_gem,x,y,global.partCinder,1)
}
else if gempower = 2
{
	//part_particles_create(global.sys_below_gem,x,y,global.partLight,1)
	//part_particles_create(global.sys_below_gem,x,y,global.partRay,1)
	luck = irandom(10)
	if luck < 2 sys = global.sys_above_gem
	else sys = global.sys_below_gem
	emit_newstar = part_emitter_create(sys);
	part_emitter_region(sys,emit_newstar,x-32,x+32,y-32,y+32,2,0);
	part_emitter_burst(sys,emit_newstar,global.part_star_bolt,2);
}
else if gempower = 3
{
	//part_particles_create(global.sys_below_gem,x,y,global.partNovaLight,1)
	//part_particles_create(global.sys_below_gem,x,y,global.partNovaRay,1)
	luck = irandom(10)
	if luck < 2 sys = global.sys_above_gem
	else sys = global.sys_below_gem
	emit_newstar = part_emitter_create(sys);
	part_emitter_region(sys,emit_newstar,x-32,x+32,y-32,y+32,2,0);
	part_emitter_burst(sys,emit_newstar,global.part_star_bolt,2);
	part_particles_create(global.sys_below_gem,x,y,global.partNovaFire,1)
}
else if gempower = 4
{
	part_particles_create(global.sys_below_gem,x,y,global.partFire,1)
	part_particles_create(global.sys_below_gem,x,y,global.partCinder,1)
	luck = irandom(10)
	if luck < 2 sys = global.sys_above_gem
	else sys = global.sys_below_gem
	emit_newstar = part_emitter_create(sys);
	part_emitter_region(sys,emit_newstar,x-32,x+32,y-32,y+32,2,0);
	part_emitter_burst(sys,emit_newstar,global.part_star_bolt,2);
	part_particles_create(choose(global.sys_below_gem,global.sys_above_gem),x,y,global.partSeptafractal,1)
}
else if gempower = 5
{
	part_particles_create(global.sys_below_gem,x,y,global.partFire,1)
	part_particles_create(global.sys_below_gem,x,y,global.partCinder,1)
	luck = irandom(10)
	if luck < 2 sys = global.sys_above_gem
	else sys = global.sys_below_gem
	emit_newstar = part_emitter_create(sys);
	part_emitter_region(sys,emit_newstar,x-32,x+32,y-32,y+32,2,0);
	part_emitter_burst(sys,emit_newstar,global.part_star_bolt,2);
	part_particles_create(choose(global.sys_below_gem,global.sys_above_gem),x,y,global.partOctafractal,1)
}
else if amMulti || amTimeGem
{
	part_type_color1(global.pr_multi,mycolor)
	part_particles_create(global.sys_above_gem,x,y,global.pr_multi,1)
}
#endregion