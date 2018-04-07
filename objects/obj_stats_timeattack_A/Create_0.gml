/// @description Insert description here
// You can write your code in this editor

//Default them (make space for 11th and 12th pos)
x = 0
y = 0 
if !audio_is_playing(mus_stats) audio_play_sound(mus_stats,0,1)

section[0] = "stats_timeattack_points"
section[1] = "stats_timeattack_matches"
section[2] = "stats_timeattack_style"

ini_open("settings.ini")
for(j=0;j<=2;j++) // for all sections
{
	if !ini_section_exists(section[j])
	{
		for(i=0;i<10;i++)
		{
		ini_write_string(section[j],string(i),"-")
		ini_write_real(section[j],string(i)+"value",0)
		}
	}
	for(i=0;i<10;i++)
	{
		if j = 0
			{
			stats_name_points[i] = ini_read_string(section[j],string(i),"-")
			stats_points[i] = ini_read_real(section[j],string(i)+"value",0)
			}
		else if j = 1
			{
			stats_name_matches[i] = ini_read_string(section[j],string(i),"-")
			stats_matches[i] = ini_read_real(section[j],string(i)+"value",0)
			}
		else 
			{
			stats_name_style[i] = ini_read_string(section[j],string(i),"-")
			stats_style[i] = ini_read_real(section[j],string(i)+"value",0)		
			}
	}
	
}

ini_close()