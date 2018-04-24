/// @description Insert description here
// You can write your code in this editor
//if !MyGamerule.moving &&
if MyGamerule.lightOn
{
	if collision_rectangle(x-35,y-35,x+35,y+35,MyLightObj,false,true)
	{
		bloom = true

	}
	else
	{
		bloom = false
	}
}
else bloom = false

_i = floor((y-MyBoard.y+63)/64)
_j = (x-MyBoard.x) div 64
if gempower > 0
{
	alpharand = irandom_range(3,6)
	alpharand = alpharand/10
}

if !MyGamerule.lightOn && !ammoving //&& !matchnear
{

if _i != 7 || acc != 0//no need to check for collisions at the very bottom
	{
		crap = false
		damnvan = instance_place(x,y,collider)
		if damnvan != noone
		{	
			crap = true
			dir = y - damnvan.y
			if dir < 0 //I am gem above
				{
					y-= abs(dir) //move up the distance
				}
			else if dir > 0 //if im the gem below
			{
				if !place_meeting(x,y+dir,collider)
				{
					y+=dir
				}
			}
			//else instance_destroy() //if im wtf the same?
		}

			
			acc+=0.6	
			if (place_meeting(x,y+acc,collider))
			{
				if acc !=0
				{
				    while(!place_meeting(x,y+sign(acc),collider))
				    {
				        y+=sign(acc);
				    }

				}
				acc = 0
			}
			y+=acc
			
			
			/*
			acc+=0.6
			acc = clamp(acc,-30,30)
			if _i >= 0
			{
				if _i = 7
				{
					if (y + acc) - MyBoard.y >= _i*64
						{
						y = MyBoard.y + 64*_i
						acc = 0
						}
				}
				else if instance_exists(MyGamerule.gem_board1[_i+1,_j]) && MyGamerule.gem_board1[_i+1,_j] != id
				{
					if MyGamerule.gem_board1[_i+1,_j].acc = 0
					{
						if (y + acc) - MyBoard.y >= _i*64
						{
						y = MyBoard.y + 64*_i
						acc = 0
						}
					}
				}				
			}
			if instance_exists(MyDiss) acc = 0
			y+=acc
			*/
	}
	else {acc = 0; y = MyBoard.y + 64*_i}
} else acc = 0

if amPowered
{
	if MyGamerule.IsGemActive
	{
		amPowered = false
	}
}

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

