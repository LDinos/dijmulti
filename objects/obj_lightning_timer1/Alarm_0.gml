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
	if !Gamerule_1.blazingspeed Gamerule_1.controlallowed = false
	else Gamerule_1.controlallowed = true
	
	if Gamerule_1.IsGemActive2 && !Gamerule_1.blazingspeed
	{
				
		if Gamerule_1.total_timegem != 0
		{
			Gamerule_1.xplier++
			lightning_timer = Gamerule_1.total_timegem
			Gamerule_1.total_timegem = 0
			audio_play_sound(snd_lightning_refill,0,0)
			with(Gem_1)
			{
				if amTimeGem
				{
					if TimeGem = 5 gempower = 1
					else gempower = 2
					amTimeGem = false
				}
			}
			with(obj_deposit1)
			{			
				alarm[0] = 1
			}
			Gamerule_1.controlallowed = true
			alarm[0] = 1
			with(obj_lightning_pipe) alarm[0] = 1
		}
		else
		{
			with(Gem_1) amTimeGem = false
			with(Gamerule_1) timegemallowed = false
			instance_create(x,y,obj_lasthur1)
		}
		
	}
	else alarm[0] = 1
}