/// @description Insert description here
// You can write your code in this editor

//Default them (make space for 11th and 12th pos)
x = 0
y = 0 
if !audio_is_playing(mus_stats) audio_play_sound(mus_stats,0,1)
section = "stats_lightning"

ini_open("settings.ini")

if !ini_section_exists(section)
{
	for(i=0;i<10;i++)
	{
	ini_write_string(section,string(i),"-")
	ini_write_real(section,string(i)+"value",0)
	ini_write_real(section,string(i)+"xplier",0)
	}
}
for(i=0;i<10;i++)
{
	stats_name_points[i] = ini_read_string(section,string(i),"-")
	stats_points[i] = ini_read_real(section,string(i)+"value",0)
	stats_xplier[i] = ini_read_real(section,string(i)+"xplier",0)
}

ini_close()