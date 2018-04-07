/// @description Insert description here
// You can write your code in this editor
if lightning_timer > 0 lightning_timer--
yscale = lightning_timer/60
if lightning_timer > 0
{
	if lightning_timer <= 10 audio_play_sound(snd_clocktick,0,0)
	alarm[0] = 60
}
else
{
	if !Gamerule_2.blazingspeed Gamerule_2.controlallowed = false
	else Gamerule_2.controlallowed = true
	
	if Gamerule_2.IsGemActive2 && !Gamerule_2.blazingspeed
	{
				
		if Gamerule_2.total_timegem != 0
		{
			Gamerule_2.xplier++
			lightning_timer = Gamerule_2.total_timegem
			Gamerule_2.total_timegem = 0
			audio_play_sound(snd_lightning_refill,0,0)
			with(Gem_2)
			{
				if amTimeGem
				{
					if TimeGem = 5 gempower = 1
					else gempower = 2
					amTimeGem = false
				}
			}
			with(obj_deposit2)
			{			
				alarm[0] = 1
			}
			Gamerule_2.controlallowed = true
			alarm[0] = 1
			with(obj_lightning_pipe2) alarm[0] = 1
		}
		else
		{
			with(Gem_2) amTimeGem = false
			with(Gamerule_2) timegemallowed = false
			instance_create(x,y,obj_lasthur2)
		}
		
	}
	else alarm[0] = 1
}