/// @description Bot move down and match
// You can write your code in this editor
if Gamerule_1.controlallowed && Gamerule_1.summoves2 > 0
{
/* First press the equivalent button */
if Gamerule_1.dir_gemtouse[gemcontrolindex] == "down"
{
	if ylim < global.board_rows-1
	{
	ylimprevious = ylim
	ylim++
	y+=64
	}
}
else if Gamerule_1.dir_gemtouse[gemcontrolindex] == "up"
{
	if ylim > 0 
	{
	ylimprevious = ylim
	ylim--
	y-=64
	}
}
else if Gamerule_1.dir_gemtouse[gemcontrolindex] == "left"
{
	if xlim > 0 
	{
	xlimprevious = xlim
	xlim--
	x-=64
	}
}
else if Gamerule_1.dir_gemtouse[gemcontrolindex] == "right"
{
	if xlim < Gamerule_1.board_xsize-1
	{
	xlimprevious = xlim
	xlim++
	x+=64
	}
}

/*And Immidiatley press spacebar*/
if instance_exists(Gamerule_1.gem_board1[ylim,xlim]) && instance_exists(gem1)
	{
		if Gamerule_1.gem_board1[ylim,xlim].acc = 0 && Gamerule_1.gem_board1[ylim,xlim].ammoving = false
		{
			//if gem1 = noone
			//	{
			//		gem1 = Gamerule_1.gem_board1[ylim,xlim]
			//		with(gem1) spin()
			//	}
			if gem1 = Gamerule_1.gem_board1[ylim,xlim]
				{
					with(gem1) unspin()
					gem1 = noone
				}
			else if (find_gemboard_posi(gem1,Gamerule_1) == ylim && abs(find_gemboard_posj(gem1,Gamerule_1) - xlim) == 1) || ((find_gemboard_posj(gem1,Gamerule_1) == xlim) && abs(find_gemboard_posi(gem1,Gamerule_1) - ylim) == 1)
				{
					
					//if Gamerule_1.IsGemActive2
					//{
					gem2 = Gamerule_1.gem_board1[ylim,xlim]
					if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
					{
						with(gem1) unspin()
						do_match(Gamerule_1)
						//}
					}
					else gem2 = noone
				}
			else
				{
					with(gem1) unspin()
					gem1 = Gamerule_1.gem_board1[ylim,xlim]
					with(gem1) spin()
				}
		}

	}
alarm[5] = -1
alarm[5] = r2
}