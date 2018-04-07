/// @description Visuals only of Gem_1/2 Destroy event
// You can write your code in this editor
with(obj_avalanchespawner) gemsdestroyed++
with(obj_avalanchedeposit) gems_to_send++
if amTimeGem
{
	if TimeGem = 5 audio_play_sound(snd_lightning_fill5,0,0)
	else audio_play_sound(snd_lightning_fill10,0,0)
}

if gempower = 3
    {
        audio_play_sound(snd_novaexplode,1,false)
		instance_create(x,y,obj_novaexplode)
		//deleted stuff here//
    }
else if gempower = 2
    {
        audio_play_sound(snd_electro,1,false)
		if instance_exists(obj_client) // are we looking at player 1's board?
		{
			        le1 = instance_create(Board_1.x +32*7,y,lightning_online)
			        le2 = instance_create(x,Board_1.y +32*7,lightning_online)
			        with(le2) image_angle += 90
			        with(le1) skinnum = other.image_index
			        with(le2) skinnum = other.image_index

		}
		else
		{
				le1 = instance_create(Board_2.x +32*7,y,lightning_online)
			        le2 = instance_create(x,Board_2.y +32*7,lightning_online)
			        with(le2) image_angle += 90
			        with(le1) skinnum = other.image_index
			        with(le2) skinnum = other.image_index
		}
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