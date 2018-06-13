/// @description Insert description here
// You can write your code in this edit

//DEFAULT MAPPING\\
global.ps1_left = vk_left
global.ps1_right = vk_right
global.ps1_up = vk_up
global.ps1_down = vk_down
global.ps1_select = vk_space 
global.ps1_pass = ord("P")
global.ps1_moveleft = gp_face3
global.ps1_moveright = gp_face2
global.ps1_moveup = gp_face4
global.ps1_movedown = gp_face1

global.ps2_left = ord("A")
global.ps2_right = ord("D")
global.ps2_up = ord("W")
global.ps2_down = ord("S")
global.ps2_select = vk_shift
global.ps2_pass = ord("P")
global.ps2_moveleft = gp_face3
global.ps2_moveright = gp_face2
global.ps2_moveup = gp_face4
global.ps2_movedown = gp_face1
//-------------------------\\

//PLAYER1
if (global.gp[0] = -2) //invert first player
{
	//player2
	global.ps1_left = ord("A")
	global.ps1_right = ord("D")
	global.ps1_up = ord("W")
	global.ps1_down = ord("S")
	global.ps1_select = vk_shift
	global.ps1_pass = ord("P")
	global.ps1_moveleft = gp_face3
	global.ps1_moveright = gp_face2
	global.ps1_moveup = gp_face4
	global.ps1_movedown = gp_face1
}
else if (global.gp[0] != -1)
{
	
	global.ps1_left = gp_padl
	global.ps1_right = gp_padr
	global.ps1_up = gp_padu
	global.ps1_down = gp_padd
	global.ps1_select = gp_shoulderr
	global.ps1_moveleft = gp_face3
	global.ps1_moveright = gp_face2
	global.ps1_moveup = gp_face4
	global.ps1_movedown = gp_face1
	global.ps1_pass = gp_shoulderl
	
}

//PLAYER2
if (global.gp[1] = -1) //invert second player
{
	//player1
	global.ps2_left = vk_left
	global.ps2_right = vk_right
	global.ps2_up = vk_up
	global.ps2_down = vk_down
	global.ps2_select = vk_space
	global.ps2_pass = ord("P")
	global.ps2_moveleft = gp_face3
	global.ps2_moveright = gp_face2
	global.ps2_moveup = gp_face4
	global.ps2_movedown = gp_face1
}
else if (global.gp[1] != -2)
{
	global.ps2_left = gp_padl
	global.ps2_right = gp_padr
	global.ps2_up = gp_padu
	global.ps2_down = gp_padd
	global.ps2_select = gp_shoulderr
	global.ps2_moveleft = gp_face3
	global.ps2_moveright = gp_face2
	global.ps2_moveup = gp_face4
	global.ps2_movedown = gp_face1
	global.ps2_pass = gp_shoulderl
	/*
	global.ps1_left = gp_padl
	global.ps1_right = gp_padr
	global.ps1_up = gp_padu
	global.ps1_down = gp_padd
	global.ps1_select = gp_face1
	*/
	
}
