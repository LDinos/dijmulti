/// @description Turn change
// You can write your code in this editor
if Gamerule_1.controlallowed
{
	turn = 1 //it was player one's turn
	Gamerule_1.controlallowed = false
	Gamerule_2.IsGemActive = false
	Gamerule_2.IsGemActive2 = false
}
else
{
	turn = 2 //it was player two's turn
	Gamerule_2.controlallowed = false
	Gamerule_1.IsGemActive = false
	Gamerule_1.IsGemActive2 = false
}

alarm[1] = 1
/*
else //gameover
{	
	if !gameover
	{
		if full1
		{
			if Gamerule_1.IsGemActive2
			{
				gameover = true
				Gamerule_1.controlallowed = false
				Gamerule_2.controlallowed = false
				alarm[2] = 120
				avalanche_gameover(1)
			}
		}
		else if full2
		{
			if Gamerule_2.IsGemActive2
			{
				Gamerule_2.controlallowed = false
				Gamerule_1.controlallowed = false
				gameover = true
				alarm[2] = 120
				avalanche_gameover(2)
			}
		}
	}
}