/// @description Insert description here
// You can write your code in this editor

// WIN[0] \\
if Gamerule_1.points == Gamerule_2.points
{
	if win[0] != 0
	{
		lens = instance_create(x+488,y+32,obj_lensflare)
		with(lens) clr = c_orange
		win[0] = 0
	}
}
else if Gamerule_1.points > Gamerule_2.points
{
	if win[0] != 1
	{
		audio_play_sound(snd_buttonchangeleft,0,0)
		lens = instance_create(x+488,y+32,obj_lensflare)
		with(lens) clr = c_green
		win[0] = 1
	}
}
else 
{
	if win[0] != 2
	{
		lens = instance_create(x+488,y+32,obj_lensflare)
		with(lens) clr = c_red
		win[0] = 2
	}
}

// WIN[1] \\
if Gamerule_1.matches == Gamerule_2.matches
{
	if win[1] != 0
	{
		lens = instance_create(x+488,y+64,obj_lensflare)
		with(lens) clr = c_orange
		win[1] = 0
	}
}
else if Gamerule_1.matches > Gamerule_2.matches
{
	if win[1] != 1
	{
		audio_play_sound(snd_buttonchangeleft,0,0)
		lens = instance_create(x+488,y+64,obj_lensflare)
		with(lens) clr = c_green
		win[1] = 1
	}
}
else 
{
	if win[1] != 2
	{
		lens = instance_create(x+488,y+64,obj_lensflare)
		with(lens) clr = c_red
		win[1] = 2
	}
}

// WIN[2] \\
if Gamerule_1.style == Gamerule_2.style
{
	if win[2] != 0
	{
		lens = instance_create(x+488,y+64,obj_lensflare)
		with(lens) clr = c_orange
		win[2] = 0
	}
}
else if Gamerule_1.style > Gamerule_2.style
{
	if win[2] != 1
	{
		audio_play_sound(snd_buttonchangeleft,0,0)
		lens = instance_create(x+488,y+64,obj_lensflare)
		with(lens) clr = c_green
		win[2] = 1
	}
}
else 
{
	if win[2] != 2
	{
		lens = instance_create(x+488,y+64,obj_lensflare)
		with(lens) clr = c_red
		win[2] = 2
	}
}