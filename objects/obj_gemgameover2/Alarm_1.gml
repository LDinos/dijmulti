/// @description Insert description here
// You can write your code in this editor
get_stats()
if room = rm_timeattack room_goto(rm_stats_timeattack)
else if room = rm_lightning room_goto(rm_stats_lightning)
else if room != rm_avalanche room_goto(rm_stats_timeattack)
else room_goto(rm_menu)