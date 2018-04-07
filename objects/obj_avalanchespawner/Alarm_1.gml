/// @description Gem create
// You can write your code in this editor
if turn = 1 //if that was p1's turn
{
	if Gamerule_1.IsGemActive2
	{
		//compliment//
		if gemsdestroyed >= 12
		{
			audio_play_sound(snd_avalanchebigcombo,0,0)
			if gemsdestroyed < 18 audio_play_sound(vo_excellent,2,0)
			else if gemsdestroyed < 25 audio_play_sound(vo_awesome,2,0)
			else if gemsdestroyed < 30 audio_play_sound(vo_spectacular,2,0)
			else if gemsdestroyed < 38 audio_play_sound(vo_extraordinary,2,0)
			else if gemsdestroyed >= 38 audio_play_sound(vo_unbelievable,2,0)
		}
		else if gemsdestroyed >= 8 audio_play_sound(vo_good,2,0)
		//--------------//
		
		if obj_avalanchedeposit.gems_existing < 64 
		{
			with(obj_avalanchedeposit)
			{
				player_turn = 2
				f = 0
				xdestination = right
				xx = x
				alarm[0] = 1
				gems_to_send = 1
			}
			avalanche_create_gems(Gamerule_2,Board_2,Gem_2,gemsdestroyed + 1)
			gemsdestroyed = 0
			//Gamerule_2.controlallowed = true
		}
		else
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
						alarm[2] = 160
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
						alarm[2] = 160
						avalanche_gameover(2)
					}
				}
			}
		}
	}
	else alarm[1] = 1
}
else //if it was p2's turn
{
	if Gamerule_2.IsGemActive2
	{
		//compliment//
		if gemsdestroyed >= 12
		{
			audio_play_sound(snd_avalanchebigcombo,0,0)
			if gemsdestroyed < 18 audio_play_sound(vo_excellent,2,0)
			else if gemsdestroyed < 25 audio_play_sound(vo_awesome,2,0)
			else if gemsdestroyed < 30 audio_play_sound(vo_spectacular,2,0)
			else if gemsdestroyed < 38 audio_play_sound(vo_extraordinary,2,0)
			else if gemsdestroyed >= 38 audio_play_sound(vo_unbelievable,2,0)
		}
		else if gemsdestroyed >= 8 audio_play_sound(vo_good,2,0)
		//--------------//
		if obj_avalanchedeposit.gems_existing < 64 
		{
			with(obj_avalanchedeposit)
			{
				player_turn = 1
				f = 0
				xdestination = left
				xx = x
				alarm[0] = 1
				gems_to_send = 1
			}
			avalanche_create_gems(Gamerule_1,Board_1,Gem_1,gemsdestroyed + 1)
			gemsdestroyed = 0
			//Gamerule_1.controlallowed = true	
		}
		else
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
	}
	else alarm[1] = 1
}