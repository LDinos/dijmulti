for(j=0;j<=board_xsize-1;j++)
{
	gaps[j] = 0
	for(i=0;i<=global.board_rows-1;i++)
	{
		if gems_fallen[i,j] = noone || !instance_exists(gems_fallen[i,j])
		{
			gaps[j]++
		}
	}
}