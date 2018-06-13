/// @description Insert description here
// You can write your code in this editor
with(obj_avalanchespawner) gemsdestroyed++
with(obj_avalanchedeposit) gems_to_send++
if amTimeGem
{
	addup_timegem(MyGamerule,TimeGem)
	if TimeGem = 5 audio_play_sound(snd_lightning_fill5,0,0)
	else audio_play_sound(snd_lightning_fill10,0,0)
}

if amMulti
{
	if MyGamerule.multiallowed
	{
		audio_play_sound(snd_multiup,0,0)
		MyGamerule.xplier++
		MyGamerule.multinum = 0
		with(MyBoard) multi_alpha = 0.4
	}
	else
	{
		audio_play_sound(snd_multiexplode,0,0)
		with(MyGamerule) points += (xplier+1) * 1000
	}
}

if MyGamerule.combo >= 1 && !dontshake
{
	add_xymover(MyGem)
}

if gempower >= 5
{
	audio_play_sound(snd_septanovaexplode,2,false)
	instance_create(x,y,obj_novaexplode)
	part_particles_create(global.sys_above_gem,x,y,global.partSeptaExplosion,50)
	part_particles_create(global.sys_above_gem,x,y,global.partSeptaExplosion2,5)
	for(i=0;i<=7;i++)
	{
		instance_create(MyBoard.x + 32*7, MyBoard.y + 64*i, MyLightKiller)
		le = instance_create(MyBoard.x + 32*7, MyBoard.y + 64*i, MyLightObj)
		with(le) {skinnum = other.skinnum;}
	}
}
if gempower = 4
{
	//audio_play_sound(snd_novaexplode,1,false)
	audio_play_sound(snd_septanovaexplode,2,false)
	instance_create(x,y,obj_novaexplode)
	part_particles_create(global.sys_above_gem,x,y,global.partSeptaExplosion,50)
	part_particles_create(global.sys_above_gem,x,y,global.partSeptaExplosion2,5)
	for(i=0;i<=4;i++)
	{
		le[i] = noone
		if position_meeting(MyBoard.x +32*7,y + (i-2)*64,MyBoard)
		{
			le[i] = instance_create(MyBoard.x +32*7,y+ (i-2)*64,MyLightObj)		
			with(le[i]) skinnum = other.skinnum
		}
		instance_create(x,y + (i-2)*64,MyLightKiller)
		
		if position_meeting(x - (i-2)*64,MyBoard.y+32*7,MyBoard) 
		{
			le[i] = instance_create(x - (i-2)*64,MyBoard.y+32*7,MyLightObj)
			with(le[i]) {skinnum = other.skinnum; image_angle = 90}
		}
		instance_create(x - (i-2)*64,y,MyLightKiller)
		
	}
}
else if gempower = 3
    {
        audio_play_sound(snd_novaexplode,1,false)
		instance_create(x,y,obj_novaexplode)
        if position_meeting(MyBoard.x +32*7,y,MyBoard) le1 = instance_create(MyBoard.x +32*7,y,MyLightObj)
		if position_meeting(MyBoard.x +32*7,y-64,MyBoard) le2 = instance_create(MyBoard.x +32*7,y-64,MyLightObj)
		if position_meeting(MyBoard.x +32*7,y+64,MyBoard) le3 = instance_create(MyBoard.x +32*7,y+64,MyLightObj)
        if position_meeting(x,MyBoard.y +32*7,MyBoard) le4 = instance_create(x,MyBoard.y +32*7,MyLightObj)
		if position_meeting(x+64,MyBoard.y +32*7,MyBoard) le5 = instance_create(x+64,MyBoard.y +32*7,MyLightObj)
		if position_meeting(x-64,MyBoard.y +32*7,MyBoard) le6 = instance_create(x-64,MyBoard.y +32*7,MyLightObj)
        with(le4) image_angle += 90
		with(le5) image_angle += 90
		with(le6) image_angle += 90
        with(le1) skinnum = other.skinnum
        with(le2) skinnum = other.skinnum
		with(le3) skinnum = other.skinnum
		with(le4) skinnum = other.skinnum
        with(le5) skinnum = other.skinnum
		with(le6) skinnum = other.skinnum
        instance_create(x,y,MyLightKiller) 
		instance_create(x,y-64,MyLightKiller) 
		instance_create(x,y+64,MyLightKiller)
		instance_create(x-64,y,MyLightKiller) 
		instance_create(x+64,y,MyLightKiller) 
		
    }
else if gempower = 2
    {
        audio_play_sound(snd_electro,1,false)
        le1 = instance_create(MyBoard.x +32*7,y,MyLightObj)
        le2 = instance_create(x,MyBoard.y +32*7,MyLightObj)
        with(le2) image_angle += 90
        with(le1) skinnum = other.skinnum
        with(le2) skinnum = other.skinnum
        instance_create(x,y,MyLightKiller)
    }
else if gempower = 1
{
	//flame parts
	with(MyGamerule)
	{
		flameon = true
		alarm[5] = 10
	}
		vibrate(global.gp[0],1,1,10)
		with(MyGem) acc = 0
		audio_play_sound(snd_explode,0,0)
        for(i=1;i<=15;i++)
        {
        part_particles_create(global.sys_above_gem,irandom_range(x-96,x+96),irandom_range(y-96,y+96),global.gemexplodetype,1)
        part_particles_create(global.sys_above_gem,irandom_range(x-96,x+96),irandom_range(y-96,y+96),global.gemexplodetype2,1)
        }
        part_particles_create(global.sys_above_gem,x,y,global.gemexplodetype3,1) 
	for(i=-1;i<=1;i++)
	{
		for(j=-1;j<=1;j++)
		{
			if (i !=0 || j !=0) with(instance_position(x + 64*j, y + 64*i, MyGem))
			{
				if !amPowered && matchme <= 0
				{
				with(MyGamerule) {points_add(20); style_add(20)}
				dontshake = true
				if gempower = 0 instance_destroy()
				else alarm[1] = 10
				}
			}
		}
	}
	/*for(i=-1;i<=1;i++)
	{
	with(instance_position(x + 64*i, y - 128, MyGem)) push_up(MyGem)
	}*/
}

if amexplode explode(MyGem)

create_collider(10)
diss = instance_create_depth(x,y,depth,MyDiss)
with(diss) image_index = other.skinnum
if spinning
{
	MyPlayer.gem1 = noone
}

for(i=1;i<=10;i++)
{
	xr = irandom_range(-32,32)
	yr = irandom_range(-32,32)
	part_particles_create(global.sys_below_gem,x+xr,y+yr,global.pr_gembreak,1)
}

if instance_exists(MyNet) && send_destroy_info global.gemlist[myid] = noone

with(MyNet)
{
	//buffer = buffer_create(1024,buffer_fixed,1)
	buffer_resize(buffer,1) 
	buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,GEM_DIE)
	buffer_write(buffer,buffer_u8,other.myid)
	network_send_packet(client_socket,buffer,buffer_tell(buffer))
	//buffer_delete(buffer)
}