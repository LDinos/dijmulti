/// @description Bot move down and match
// You can write your code in this editor
if Gamerule_2.controlallowed && Gamerule_2.summoves2 > 0
{
/* First press the equivalent button */
if Gamerule_2.dir_gemtouse[gemcontrolindex] == "down"
{
	if ylim < 7
	{
	ylimprevious = ylim
	ylim++
	y+=64
	}
}
else if Gamerule_2.dir_gemtouse[gemcontrolindex] == "up"
{
	if ylim > 0 
	{
	ylimprevious = ylim
	ylim--
	y-=64
	}
}
else if Gamerule_2.dir_gemtouse[gemcontrolindex] == "left"
{
	if xlim > 0 
	{
	xlimprevious = xlim
	xlim--
	x-=64
	}
}
else if Gamerule_2.dir_gemtouse[gemcontrolindex] == "right"
{
	if xlim < 7
	{
	xlimprevious = xlim
	xlim++
	x+=64
	}
}

/*And Immidiatley press spacebar*/
if instance_exists(Gamerule_2.gem_board1[ylim,xlim]) && instance_exists(gem1)
	{
		if Gamerule_2.gem_board1[ylim,xlim].acc = 0 && Gamerule_2.gem_board1[ylim,xlim].ammoving = false
		{
			//if gem1 = noone
			//	{
			//		gem1 = Gamerule_2.gem_board1[ylim,xlim]
			//		with(gem1) spin()
			//	}
			if gem1 = Gamerule_2.gem_board1[ylim,xlim]
				{
					with(gem1) unspin()
					gem1 = noone
				}
			else if (gem1._i == ylim && abs(gem1._j - xlim) == 1) || ((gem1._j == xlim) && abs(gem1._i - ylim) == 1)
				{
					
					//if Gamerule_2.IsGemActive2
					//{
					gem2 = Gamerule_2.gem_board1[ylim,xlim]
					if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_2.y) mod 64 <= 1|| (gem1.y - Board_2.y) mod 64 >= 62)
					{
						with(gem1) unspin()
						do_match(Gamerule_2)
						//}
					}
					else gem2 = noone
				}
			else
				{
					with(gem1) unspin()
					gem1 = Gamerule_2.gem_board1[ylim,xlim]
					with(gem1) spin()
				}
		}

	}
alarm[5] = -1
alarm[5] = r2
}