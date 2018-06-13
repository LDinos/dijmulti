/// @description Button hold
// You can write your code in this editor
//press
if Gamerule_1.controlallowed
{
if keyboard_check(global.ps2_left) || gamepad_button_check(global.gp[1],gp_padl)
{
	if xlim > 0
	{
	xlimprevious = xlim
	xlim--
	x-=64
	}
	alarm[0] = 5
	/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_client,PLAYER_POS,player2)	
/*SERVER ONLY--------------------------*/
}

if keyboard_check(global.ps2_right) || gamepad_button_check(global.gp[1],gp_padr)
{
	if xlim < 7
	{
	xlimprevious = xlim
	xlim++
	x+=64
	}
	alarm[0] = 5
	/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_client,PLAYER_POS,player2)	
/*SERVER ONLY--------------------------*/
}

if keyboard_check(global.ps2_up) || gamepad_button_check(global.gp[1],gp_padu)
{
	if ylim > 0
	{
	ylimprevious = ylim
	ylim--
	y-=64
	}
	alarm[0] = 5
	/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_client,PLAYER_POS,player2)	
/*SERVER ONLY--------------------------*/
}

if keyboard_check(global.ps2_down) || gamepad_button_check(global.gp[1],gp_padd)
{
	if ylim < 7
	{
	ylimprevious = ylim
	ylim++
	y+=64
	}
	alarm[0] = 5
	/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_client,PLAYER_POS,player2)	
/*SERVER ONLY--------------------------*/
}
}