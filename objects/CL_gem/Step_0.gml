/// @description Insert description here
// You can write your code in this editor
if !ammoving && !lightOn
{
	if place_meeting(x,y,CL_gem) //if stuck
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
	}
	acc+=0.6	
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

	y+=acc
}

if gempower = 1
{
	part_particles_create(global.sys_below_gem,x,y,global.partFire,1)
	part_particles_create(global.sys_below_gem,x,y,global.partCinder,1)
}
else if gempower = 2
{
	part_particles_create(global.sys_below_gem,x,y,global.partLight,1)
	part_particles_create(global.sys_below_gem,x,y,global.partRay,1)
}
else if gempower = 3
{
	part_particles_create(global.sys_below_gem,x,y,global.partNovaLight,1)
	part_particles_create(global.sys_below_gem,x,y,global.partNovaRay,1)
	part_particles_create(global.sys_below_gem,x,y,global.partNovaFire,1)
}

if amMulti || amTimeGem
{
	part_type_color1(global.pr_multi,mycolor)
	part_particles_create(global.sys_above_gem,x,y,global.pr_multi,1)
}