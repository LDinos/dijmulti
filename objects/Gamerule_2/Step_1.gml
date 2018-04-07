/// @description Insert description here
// You can write your code in this editor
for(i=global.board_rows-1;i>=0;i--)
	{
		for(j=7;j>=0;j--)
		{
			if i > 0 gem_board1[i,j] = collision_point(Board_2.x + 64*j, Board_2.y + 64*i, Gem_2,false,true)
			else gem_board1[i,j] = collision_line(Board_2.x + 64*j, Board_2.y-32 + 64*i, Board_2.x + 64*j, Board_2.y + 64*i,Gem_2,false,true)
			//gem_board1[i,j] = instance_position(Board_1.x + 64*j, Board_1.y-30 + 64*i, Gem_1)
		}
	}
gems_fallen = array_copy_2d(gem_board1)/*
for(i=0;i<=global.board_rows-1;i++) //copy paste
	{
		for(j=0;j<=7;j++)
		{
			gems_fallen[i,j] = gem_board1[i,j]
		}
	}*/
	
if !IsGemActive
{	
	for(j=0;j<=7;j++)
	{
		k = global.board_rows-1
		for(i=global.board_rows-1;i>=0;i--)
		{
			if instance_exists(gem_board1[i,j]) //an den einai -4
			{
				temp = gems_fallen[k,j]
				gems_fallen[k,j] = gem_board1[i,j]
				gems_fallen[i,j] = temp	
				k--
			}
		
		}
	}
	check_summoves()
	check_gaps()
}

ready = true
for(i=0;i<=global.board_rows-1;i++)
{
	for(j=0;j<=7;j++)
	{
		if gem_board1[i,j] != noone 
			{
				if gem_board1[i,j].acc != 0 ready = false
			}
		if instance_exists(gem_dissappear2) || lightOn ready = false
	}
}

if moving ready = false
above_ready = true
for(j=0;j<=7;j++)
{
	if instance_position(Board_2.x + j*64,Board_2.y-64,Gem_2) != noone
	{
		above_ready = false
	}
}
if above_ready = false ready = false

if ready
{
	if alarm[0] = -1 alarm[0] = 1 //isgemactive1
}
else
{
	doonce = 0
	IsGemActive = false
	IsGemActive2 = false
	alarm[0] = -1
	alarm[1] = -1
}
