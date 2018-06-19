/// @description Insert description here
// You can write your code in this editor

//Default them (make space for 11th and 12th pos)
x = 0
y = 0 
alpha = 1
color = c_white
//index = 0 //0 = points, 1 = matches, = style. Used in the object later on draw
for(i=0;i<=1;i++)
{
ismyscore[i] = -1 //which of these scores is mine (so we can highlight it) i = player_index (0 = player 1, 1 = player 2)
}

for(i=0;i<=11;i++)
{
stats_name_points[i] = "-"
stats_name_xplier[i] = "-"
stats_points[i] = 0
stats_xplier[i] = 0
}

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
else
{
	for(i=0;i<10;i++)
	{
		stats_name_points[i] = ini_read_string(section,string(i),"-")
		stats_points[i] = ini_read_real(section,string(i)+"value",0)
		stats_xplier[i] = ini_read_real(section,string(i)+"xplier",0)
	}
}


//Now lets take the points from the last game and add them on the 11th and 12th pos.
if !global.bot1
{
	stats_name_points[10] = global.user1
	stats_points[10] = global.ST_points[0] //player 1 points on 11th position
	stats_xplier[10] = global.ST_xplier[0] //player 1 style on 11th position
}
if !global.bot2
{
	stats_name_points[11] = global.user2
	stats_points[11] = global.ST_points[1] //player 2 points on 12th position
	stats_xplier[11] = global.ST_xplier[1] //player 1 style on 11th position
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
			temp3 = stats_xplier[j-1]
			stats_points[j-1] = stats_points[j]
			stats_name_points[j-1] = stats_name_points[j]
			stats_xplier[j-1] = stats_xplier[j]
			stats_points[j] = temp1
			stats_name_points[j] = temp2
			stats_xplier[j] = temp3
		}
		else if stats_points[j] = stats_points[j-1] //if on tie, check for multiplier tie breaker
		{
			if stats_xplier[j] > stats_xplier[j-1]
			{
				temp1 = stats_points[j-1]
				temp2 = stats_name_points[j-1]
				temp3 = stats_xplier[j-1]
				stats_points[j-1] = stats_points[j]
				stats_name_points[j-1] = stats_name_points[j]
				stats_xplier[j-1] = stats_xplier[j]
				stats_points[j] = temp1
				stats_name_points[j] = temp2
				stats_xplier[j] = temp3
			}
		}
	}
}


//write them back on the settings (without 11th and 12th)
for(i=0;i<=9;i++)
{
	ini_write_string(section,string(i),stats_name_points[i])
	ini_write_real(section,string(i)+"value",stats_points[i])
	ini_write_real(section,string(i)+"xplier",stats_xplier[i])
}

//and also lets highlight the scores we did right now
for(i=0;i<=1;i++)
{
	if (i = 0 && !global.bot1) || (i = 1 && !global.bot2)
	{
		for(j=0;j<=9;j++)
		{
			if (stats_points[j] == global.ST_points[i]) && (stats_xplier[j] == global.ST_xplier[i]) ismyscore[i] = j
		}
	}
}
ini_close()