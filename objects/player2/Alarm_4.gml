/// @description Bot control
// You can write your code in this editor
if Gamerule_2.controlallowed && Gamerule_2.summoves2 > 0
{
if xlim < Gamerule_2.j_gemtouse[gemcontrolindex] //press right
{
	if xlim < 7
	{
	xlimprevious = xlim
	xlim++
	x+=64
	}
}
else if xlim > Gamerule_2.j_gemtouse[gemcontrolindex] //press left
{
	if xlim > 0
	{
	xlimprevious = xlim
	xlim--
	x-=64
	}
}
else if ylim < Gamerule_2.i_gemtouse[gemcontrolindex] //press down
{
	if ylim < 7
	{
	ylimprevious = ylim
	ylim++
	y+=64
	}
}
else if ylim > Gamerule_2.i_gemtouse[gemcontrolindex] //press up
{
	if ylim > 0
	{
	ylimprevious = ylim
	ylim--
	y-=64
	}
}

if (ylim == Gamerule_2.i_gemtouse[gemcontrolindex]) && (xlim == Gamerule_2.j_gemtouse[gemcontrolindex]) && !Gamerule_2.moving //press spacebar
{
	if instance_exists(Gamerule_2.gem_board1[ylim,xlim])
	{
		if Gamerule_2.gem_board1[ylim,xlim].acc = 0 && Gamerule_2.gem_board1[ylim,xlim].ammoving = false
		{
			if gem1 = noone
				{
					gem1 = Gamerule_2.gem_board1[ylim,xlim]
					with(gem1) spin()
					alarm[6] = r1
				}
			else if gem1 = Gamerule_2.gem_board1[ylim,xlim]
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
		else //clicked on a gem that could not be selected, choose something else (shouldnt be possible)
		{
			alarm[5] = 1
		}
	}
	else //clicked on nothingess, choose something else
	{
		alarm[5] = 1
	}
}
else alarm[4] = irandom_range(r1,r2)
}