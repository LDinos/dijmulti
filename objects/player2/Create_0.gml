/// @description Insert description here
// You can write your code in this editor
best = 0
whattoshow = 0
if global.bot2
{
	alarm[5] = 50
	gemcontrolindex = 0
	switch global.botdifficulty2
	{
		case 0: r1 = 25 r2 = 80 break;
		case 1: r1 = 16 r2 = 45 break;
		case 2: r1 = 15 r2 = 20 break;
		case 3: r1 = 8 r2 = 12 break;
		case 4: r1 = 4 r2 = 5 break;
	}
}
takerandom = false
image_speed = 0
gem1 = noone
gem2 = noone
xlimprevious = 0 //previous cursor position
ylimprevious = 0
xlim = 3 //cursor position
ylim = 3
for(i=0;i<=7;i++)
{
	for(j=0;j<=7;j++)
	{
		gemboard[i,j] = -1
	}
}