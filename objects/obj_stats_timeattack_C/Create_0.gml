/// @description Insert description here
// You can write your code in this editor

//Default them (make space for 11th and 12th pos)
x = 0
y = 0 
audio_play_sound(mus_stats,0,1)
alpha = 1
color = c_white
//index = 0 //0 = points, 1 = matches, = style. Used in the object later on draw
for(i=0;i<=1;i++)
{
ismyscore_points[i] = -1 //which of these scores is mine (so we can highlight it) i = player_index (0 = player 1, 1 = player 2)
ismyscore_matches[i] = -1
ismyscore_style[i] = -1
}

for(i=0;i<=11;i++)
{
stats_name_points[i] = "-"
stats_name_style[i] = "-"
stats_name_matches[i] = "-"
stats_points[i] = 0
stats_style[i] = 0
stats_matches[i] = 0
}

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
	else
	{
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
}

//Now lets take the points from the last game and add them on the 11th and 12th pos.
if !global.bot1
{
	stats_name_points[10] = global.user1
	stats_points[10] = global.ST_points[0] //player 1 points on 11th position
	stats_name_matches[10] = global.user1
	stats_matches[10] = global.ST_matches[0] //player 1 matches on 11th position
	stats_name_style[10] = global.user1
	stats_style[10] = global.ST_style[0] //player 1 style on 11th position
}
if !global.bot2
{
	stats_name_points[11] = global.user2
	stats_points[11] = global.ST_points[1] //player 2 points on 12th position
	stats_name_matches[11] = global.user2
	stats_matches[11] = global.ST_matches[1] //player 2 matches on 12th position
	stats_name_style[11] = global.user2
	stats_style[11] = global.ST_style[1] //player 2 style on 12th position
}

//sort points
for(i=1;i<=11;i++)
{
	for(j=11;j>=i;j--)
	{
		if stats_points[j] > stats_points[j-1]
		{
			temp1 = stats_points[j-1]
			temp2 = stats_name_points[j-1]
			stats_points[j-1] = stats_points[j]
			stats_name_points[j-1] = stats_name_points[j]
			stats_points[j] = temp1
			stats_name_points[j] = temp2
		}
	}
}

//sort matches
for(i=1;i<=11;i++)
{
	for(j=11;j>=i;j--)
	{
		if stats_matches[j] > stats_matches[j-1]
		{
			temp1 = stats_matches[j-1]
			temp2 = stats_name_matches[j-1]
			stats_matches[j-1] = stats_matches[j]
			stats_name_matches[j-1] = stats_name_matches[j]
			stats_matches[j] = temp1
			stats_name_matches[j] = temp2
		}
	}
}

//sort style
for(i=1;i<=11;i++)
{
	for(j=11;j>=i;j--)
	{
		if stats_style[j] > stats_style[j-1]
		{
			temp1 = stats_style[j-1]
			temp2 = stats_name_style[j-1]
			stats_style[j-1] = stats_style[j]
			stats_name_style[j-1] = stats_name_style[j]
			stats_style[j] = temp1
			stats_name_style[j] = temp2
		}
	}
}

//write them back on the settings (without 11th and 12th)
for(i=0;i<=9;i++)
{
	ini_write_string(section[0],string(i),stats_name_points[i])
	ini_write_real(section[0],string(i)+"value",stats_points[i])
	
	ini_write_string(section[1],string(i),stats_name_matches[i])
	ini_write_real(section[1],string(i)+"value",stats_matches[i])
	
	ini_write_string(section[2],string(i),stats_name_style[i])
	ini_write_real(section[2],string(i)+"value",stats_style[i])
}

//and also lets highlight the scores we did right now
for(i=0;i<=1;i++)
{
	if (i = 0 && !global.bot1) || (i = 1 && !global.bot2)
	{
		for(j=0;j<=9;j++)
		{
			if (stats_points[j] == global.ST_points[i]) ismyscore_points[i] = j
			if (stats_matches[j] == global.ST_matches[i]) ismyscore_matches[i] = j
			if (stats_style[j] == global.ST_style[i]) ismyscore_style[i] = j
		}
	}
}
ini_close()