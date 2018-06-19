/// @description Insert description here
// You can write your code in this editor
draw_set_font(font2)
draw_set_halign(fa_left)
draw_text(8,32,global.version)
//for(i=0;i<8;i++) draw_text(8,48 + 16*i,gaps[i])
//draw_text(100,580,cur_time)
/*
for(i=0;i<=global.board_rows-1;i++)
{
	for(j=0;j<=7;j++)
	{
		switch gemboard[i,j]
		{
			case 0:
				color = c_red
				break;
			case 1:
				color = c_white
				break;
			case 2:
				color = c_green
				break;
			case 3:
				color = c_yellow
				break;
			case 4:
				color = c_purple
				break;
			case 5:
				color = c_orange
				break;
			case 6:
				color = c_blue
				break;
			default:
				color = c_black
				break;
		}
		if gemboard[i,j] != - 1 draw_circle_color(Board_1.x + 32*j, (Board_1.y+256) + 32*i, 4,color,color,false)
	}
}
//draw_text(x,y,summoves2)