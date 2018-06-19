global.ST_points[0] = Gamerule_1.points
global.ST_points[1] = Gamerule_2.points

global.ST_matches[0] = Gamerule_1.matches
global.ST_matches[1] = Gamerule_2.matches

global.ST_style[0] = Gamerule_1.style
global.ST_style[1] = Gamerule_2.style

global.ST_xplier[0] = Gamerule_1.xplier
global.ST_xplier[1] = Gamerule_2.xplier

global.ST_bestcombo[0] = Gamerule_1.bestcombo
global.ST_bestcombo[1] = Gamerule_2.bestcombo

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

if !global.bot1 || !global.bot2
{
	if global.winner = 0
	{
		var plus = 0
		if !global.bot2 plus = (global.ST_points[1] div 2000)
		global.coinstogive = (global.ST_points[0] div 1000) + plus //winner : 100 + loser : 200 (if its not a bot)
	}
	else if global.winner = 1
	{
		var plus = 0
		if !global.bot1 plus = (global.ST_points[1] div 2000)
		global.coinstogive = (global.ST_points[1] div 1000) + plus //winner : 100 + loser : 200
	}
	else
	{
		var plus = 0
		var plus2 = 0
		if !global.bot1 plus = (global.ST_points[0] div 1000)
		if !global.bot2 plus2 = (global.ST_points[1] div 1000)
		global.coinstogive = plus2 + plus
	}
}
else global.coinstogive = 0