/// @description count statistics
// You can write your code in this editor
if player_turn = 1
{
	gems_existing = hidden_gems + instance_number(Gem_1)
}
else
{
	gems_existing = hidden_gems + instance_number(Gem_2)
}

if hidden_gems > 0
{
	if player_turn = 1 Gamerule_1.spawnallowed = true
	else Gamerule_2.spawnallowed = true
}
else
{
	Gamerule_1.spawnallowed = false
	Gamerule_2.spawnallowed = false
}

if gems_existing >= 64
{
	if !audio_is_playing(snd_danger) audio_play_sound(snd_danger,0,1)
}
else audio_stop_sound(snd_danger)