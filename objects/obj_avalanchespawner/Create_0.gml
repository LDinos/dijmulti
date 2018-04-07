/// @description Insert description here
// You can write your code in this editor
juststarted = true
turn = 1
gameover = false
gemsdestroyed = 0
Gamerule_1.multiallowed = false
Gamerule_2.multiallowed = false
pregems1 = 3*8
pregems2 = 3*8
for(k=0;k<=1;k++)
{
//----------------(1) make skins first---------------------\\
	for(i=0;i<=2;i++)
	{
		for(j=0;j<=7;j++)
		{
			gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
		}
	}

//----------------(2) make them not match---------------------\\
	do 
	{
		checkagain = false
		checkagain2 = false
		for(i=0;i<=2;i++)
		{
			for(j=1;j<=6;j++)
			{
				if gem_array[i,j] == gem_array[i,j-1] && gem_array[i,j] = gem_array[i,j+1]
				{
					do gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
					until gem_array[i,j] != gem_array[i,j-1]
					checkagain = true
				}
			}
		}
	
		for(j=0;j<=7;j++)
		{
			if gem_array[1,j] == gem_array[0,j] && gem_array[1,j] == gem_array[2,j]
			{
				do gem_array[1,j] = irandom_range(0,Gamerule_1.num_skin)
				until gem_array[1,j] != gem_array[2,j]
				checkagain = true
			}
		}
		
		//----------------(3) if they finally dont match, check if we have possible moves to do, else repeat again!---------------------\\
		if !checkagain
		{
			checkagain2 = true
			for(j=0;j<=7;j++)
			{
				
					if j <= 6 
					{
						if (gem_array[1,j] == gem_array[2,j+1]) && (gem_array[1,j] == gem_array[0,j+1])
						{
							checkagain2 = false
						}
					}
					if j >= 1
					{
						if (gem_array[1,j] == gem_array[2,j-1]) && (gem_array[1,j] == gem_array[0,j-1])
						{
							checkagain2 = false
						}
					}
					if j <= 4
					{
						if (gem_array[1,j] == gem_array[1,j+2]) && (gem_array[1,j] == gem_array[1,j+3])
						{
							checkagain2 = false
						}
					}
					if j >= 3
					{
						if (gem_array[1,j] == gem_array[1,j-2]) && (gem_array[1,j] == gem_array[1,j-3])
						{
							checkagain2 = false
						}
					}
				
			}
			if checkagain2 //shuffle and retry loop if we fail to find matches
				{
					for(i=0;i<=2;i++)
					{
						for(j=0;j<=7;j++)
						{
							gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
						}
					}
				}
		}
		
		
	} until (checkagain == false) && (checkagain2 == false)

//------------(4) Now spawn them--------------\\
	if k = 0 //player 1 spawn
	{
		for(i=0;i<=2;i++)
		{
			for(j=0;j<=7;j++)
			{
				gemcreate = instance_create_depth(Board_1.x + j*64, Board_1.y - i*64, -1, Gem_1)
				with(gemcreate) set_skin(other.gem_array[other.i,other.j])
			}
		}
	}
	else //player 2 spawn
	{
		for(i=0;i<=2;i++)
		{
			for(j=0;j<=7;j++)
			{
				gemcreate = instance_create_depth(Board_2.x + j*64, Board_2.y - i*64, -1, Gem_2)
				with(gemcreate) set_skin(other.gem_array[other.i,other.j])
			}
		}
	}
}
Gamerule_1.controlallowed = false
Gamerule_2.controlallowed = false
alarm[0] = 80