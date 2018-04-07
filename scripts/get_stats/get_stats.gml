global.ST_points[0] = Gamerule_1.points
global.ST_points[1] = Gamerule_2.points

global.ST_matches[0] = Gamerule_1.matches
global.ST_matches[1] = Gamerule_2.matches

global.ST_style[0] = Gamerule_1.style
global.ST_style[1] = Gamerule_2.style

global.ST_xplier[0] = Gamerule_1.xplier
global.ST_xplier[1] = Gamerule_2.xplier

//win condition
win_play[0] = 0
win_play[1] = 0

if (global.ST_points[0] > global.ST_points[1]) win_play[0]++
else if (global.ST_points[0] < global.ST_points[1]) win_play[1]++

if room = rm_lightning
{
	if win_play[0] = win_play[1]
	{
		if (global.ST_xplier[0] > global.ST_xplier[1]) win_play[0]++
		else if (global.ST_xplier[0] < global.ST_xplier[1]) win_play[1]++
	}
}

if room = rm_timeattack
{
if (global.ST_matches[0] > global.ST_matches[1]) win_play[0]++
else if (global.ST_matches[0] < global.ST_matches[1]) win_play[1]++

if (global.ST_style[0] > global.ST_style[1]) win_play[0]++
else if (global.ST_style[0] < global.ST_style[1]) win_play[1]++
}
//

//0 pl1, 1 pl2, 2 tie
if (win_play[0] > win_play[1]) global.winner = 0
else if (win_play[0] = win_play[1]) global.winner = 2 //tie
else global.winner = 1