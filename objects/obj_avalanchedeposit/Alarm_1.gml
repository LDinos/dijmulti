/// @description check for moves
// You can write your code in this editor
if player_turn = 1
{
	if Gamerule_1.IsGemActive2 && !ammoving
	{
		Gamerule_1.controlallowed = true
		num_turns++
		if Gamerule_1.summoves2 = 0
		{
			//pass
			create_text(spr_pass,"fader")
			audio_play_sound(snd_pass,0,0)
			//
			with(obj_avalanchespawner) event_user(0)
		}
	}
	else alarm[1] = 1
}
else
{
	if Gamerule_2.IsGemActive2 && !ammoving
	{
		Gamerule_2.controlallowed = true
		num_turns++
		if Gamerule_2.summoves2 = 0
		{
			//pass
			create_text(spr_pass,"fader")
			audio_play_sound(snd_pass,0,0)
			//
			with(obj_avalanchespawner) event_user(0)
		}
		
	}
	else alarm[1] = 1
}