/// @description Bot choose gem to find
// You can write your code in this editor
if Gamerule_2.summoves2 > 0
	{
		if global.botdifficulty2 > 2
		{
			gemcontrolindex = check_best_move(Gamerule_2)
		}
		else gemcontrolindex = irandom_range(0,Gamerule_2.summoves2-1)
		with(gem1) unspin()
		with(gem2) unspin()
		gem1 = noone
		gem2 = noone
		alarm[4] = 10
	}
else alarm[5] = 5