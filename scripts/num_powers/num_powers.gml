///Returns the number of gems that are powered
/// @param Gamerule_index
count = 0
for(i=0;i<=global.board_rows-1;i++)
{
	for(j=0;j<=argument0.board_xsize-1;j++)
	{
		ge = argument0.gem_board1[i,j]
		if instance_exists(ge)
		{
			if (ge.gempower > 0 || ge.amMulti) count++
		}
	}
}

return count;