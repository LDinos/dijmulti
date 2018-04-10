/// @description Visuals only of Gem_1/2 Destroy event
// You can write your code in this editor
if instance_exists(obj_client) MyBoard = Board_1
else MyBoard = Board_2
with(obj_avalanchespawner) gemsdestroyed++
with(obj_avalanchedeposit) gems_to_send++
if amTimeGem
{
	if TimeGem = 5 audio_play_sound(snd_lightning_fill5,0,0)
	else audio_play_sound(snd_lightning_fill10,0,0)
}

if gempower >= 5
{
	audio_play_sound(snd_septanovaexplode,2,false)
	instance_create(x,y,obj_novaexplode)
	part_particles_create(global.sys_above_gem,x,y,global.partSeptaExplosion,50)
	part_particles_create(global.sys_above_gem,x,y,global.partSeptaExplosion2,5)
	for(i=0;i<=7;i++)
	{		
		le = instance_create(MyBoard.x+32*7, MyBoard.y + 64*i, lightning_online)
		with(le) skinnum = other.image_index
	}
}
else if gempower = 4
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
			le[i] = instance_create(MyBoard.x +32*7,y+ (i-2)*64,lightning_online)		
			with(le[i]) skinnum = other.image_index
		}

		
		if position_meeting(x - (i-2)*64,MyBoard.y+32*7,MyBoard) 
		{
			le[i] = instance_create(x - (i-2)*64,MyBoard.y+32*7,lightning_online)
			with(le[i]) {skinnum = other.image_index; image_angle = 90}
		}		
	}
}
else if gempower = 3
    {
        audio_play_sound(snd_novaexplode,1,false)
		instance_create(x,y,obj_novaexplode)
		if position_meeting(MyBoard.x +32*7,y,MyBoard) le1 = instance_create(MyBoard.x +32*7,y,lightning_online)
		if position_meeting(MyBoard.x +32*7,y-64,MyBoard) le2 = instance_create(MyBoard.x +32*7,y-64,lightning_online)
		if position_meeting(MyBoard.x +32*7,y+64,MyBoard) le3 = instance_create(MyBoard.x +32*7,y+64,lightning_online)
        if position_meeting(x,MyBoard.y +32*7,MyBoard) le4 = instance_create(x,MyBoard.y +32*7,lightning_online)
		if position_meeting(x+64,MyBoard.y +32*7,MyBoard) le5 = instance_create(x+64,MyBoard.y +32*7,lightning_online)
		if position_meeting(x-64,MyBoard.y +32*7,MyBoard) le6 = instance_create(x-64,MyBoard.y +32*7,lightning_online)
        with(le4) image_angle += 90
		with(le5) image_angle += 90
		with(le6) image_angle += 90
        with(le1) skinnum = other.image_index
        with(le2) skinnum = other.image_index
		with(le3) skinnum = other.image_index
		with(le4) skinnum = other.image_index
        with(le5) skinnum = other.image_index
		with(le6) skinnum = other.image_index
		//deleted stuff here//
    }
else if gempower = 2
    {
        audio_play_sound(snd_electro,1,false)
		le1 = instance_create(MyBoard.x +32*7,y,lightning_online)
		le2 = instance_create(x,MyBoard.y +32*7,lightning_online)
		with(le2) image_angle += 90
		with(le1) skinnum = other.image_index
		with(le2) skinnum = other.image_index
		//deleted stuff here//
    }
else if gempower = 1
{
	//flame parts

		audio_play_sound(snd_explode,0,0)
        for(i=1;i<=15;i++)
        {
        part_particles_create(global.sys_above_gem,irandom_range(x-96,x+96),irandom_range(y-96,y+96),global.gemexplodetype,1)
        part_particles_create(global.sys_above_gem,irandom_range(x-96,x+96),irandom_range(y-96,y+96),global.gemexplodetype2,1)
        }
        part_particles_create(global.sys_above_gem,x,y,global.gemexplodetype3,1) 
}


diss = instance_create_depth(x,y,depth,gem_dissappear)
with(diss) image_index = other.image_index

for(i=1;i<=10;i++)
{
	xr = irandom_range(-32,32)
	yr = irandom_range(-32,32)
	part_particles_create(global.sys_below_gem,x+xr,y+yr,global.pr_gembreak,1)
}