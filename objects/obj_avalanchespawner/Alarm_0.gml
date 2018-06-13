/// @description Coin flip
// You can write your code in this editor
rand = choose(1,2)
if (rand == 1) 
{
	turn = 2
	with(obj_avalanchedeposit)
	{		
		f = 0
		xdestination = left
		xx = x
		alarm[0] = 1
		player_turn = 1
	}
	//Gamerule_1.controlallowed = true; 
	Gamerule_2.controlallowed = false
}
else 
{
	turn = 1
	with(obj_avalanchedeposit)
	{
		f = 0
		xdestination = right
		xx = x
		alarm[0] = 1
		player_turn = 2
	}
	//Gamerule_2.controlallowed = true; 
	Gamerule_1.controlallowed = false
}