/// @description Insert description here
// put gems on array and store them
for(i=global.board_rows-1;i>=0;i--)
	{
		for(j=7;j>=0;j--)
		{
			if i > 0 gem_board1[i,j] = collision_point(Board_1.x + 64*j, Board_1.y -32 + 64*i, Gem_1,false,true)
			else gem_board1[i,j] = collision_line(Board_1.x + 64*j, Board_1.y-32 + 64*i, Board_1.x + 64*j, Board_1.y + 64*i,Gem_1,false,true)	
			
		}
	}
	
gems_fallen = gem_board1

	
if !IsGemActive
{	
	for(j=0;j<=7;j++)
	{
		k = global.board_rows-1
		for(i=global.board_rows-1;i>=0;i--)
		{
			if (gem_board1 != noone)//instance_exists(gem_board1[i,j]) //an den einai -4
			{
				temp = gems_fallen[k,j]
				gems_fallen[k,j] = gem_board1[i,j]
				gems_fallen[i,j] = temp	
				k--
			}
		
		}
	}
	check_summoves()
	//check_gaps()
}

var ready = true
for(i=0;i<=global.board_rows-1;i++)
{
	for(j=0;j<=7;j++)
	{
		if gem_board1[i,j] != noone
			{
				if gem_board1[i,j].acc != 0 ready = false
			}
	}
}

if instance_exists(gem_dissappear) || lightOn ready = false
if moving ready = false
var above_ready = true
for(j=0;j<=7;j++) //for above ready
{
	if collision_point(Board_1.x + j*64,Board_1.y-64,Gem_1,false,true) != noone
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
