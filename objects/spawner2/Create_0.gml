/// @description spawner for first board
// You can write your code in this editor
havedone = false
showme = "-"
num_choices = ds_list_create()
if Gamerule_2.spawnallowed
{
for(i=0;i<=global.board_rows-1;i++)
{
	for(j=0;j<=7;j++)
	{
		gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
	}
}

//make the Gem_1s not match

do
{
	amready = true
	for(i=0;i<=global.board_rows-1;i++)
	{
		for(j=0;j<=7;j++)
		{
			if i >= 1 && i <= global.board_rows-2
			{
				if (gem_array[i-1,j] == gem_array[i,j]) && (gem_array[i,j] == gem_array[i+1,j])
					{
						amready = false
						do gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
						until gem_array[i,j] != gem_array[i-1,j]
					}
			}
			
			if j >= 1 && j <= 6
			{
				if (gem_array[i,j-1] == gem_array[i,j]) && (gem_array[i,j] == gem_array[i,j+1])
					{
						amready = false
						do gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
						until gem_array[i,j] != gem_array[i,j-1]
					}
			}
			
			
		}
	}
} until amready = true

// and now spawn them in board1
for(i=0;i<=global.board_rows-1;i++)
{
	for(j=0;j<=7;j++)
	{
		Gem = instance_create_depth(Board_2.x + 64*j, Board_2.y - 64*(i+1),-1,Gem_2) 
		with(Gem) set_skin(other.gem_array[other.i,other.j])
	}
}
}