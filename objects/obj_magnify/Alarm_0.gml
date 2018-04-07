/// @description Insert description here
// You can write your code in this editor
if instance_position(x,y,Board_1) || instance_position(x,y,Board_2)
{
	if moveup 
	{
		y-=8
	}
	else if movedown
	{
		y+=8
	}
	else if moveleft
	{
		x-=8
	}
	else if moveright
	{
		x+=8
	}
	alarm[0] = 1
}
else
{
	alarm[1] = -1
	percent = 0
	alarm[2] = 1
}