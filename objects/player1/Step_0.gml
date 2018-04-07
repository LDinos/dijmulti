/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_client)
{
if global.bot1
{
	if room != rm_avalanche
	{
		if alarm[4] = -1 && alarm[5] = -1 && alarm[6] = -1 //if for some reason we dont move?
		{
			alarm[5] = 10
		}
	}
	else
	{
		if Gamerule_1.IsGemActive2 && alarm[4] = -1 && alarm[5] = -1 && alarm[6] = -1 //if for some reason we dont move?
		{
			alarm[5] = 1
		}
		else if !Gamerule_1.IsGemActive2 alarm[5] = -1
	}
}
if Gamerule_1.controlallowed && !global.bot1 && Gamerule_1.summoves2 > 0
{
	if (image_index == 1) image_index = 0
if !Gamerule_1.moving
{
if keyboard_check_pressed(global.ps1_select) || gamepad_button_check_pressed(global.gp[0],global.ps1_select)
{
	image_alpha = 1
	if instance_exists(Gamerule_1.gem_board1[ylim,xlim])
	{
		if Gamerule_1.gem_board1[ylim,xlim].acc = 0 && Gamerule_1.gem_board1[ylim,xlim].ammoving = false
		{
			if gem1 = noone
				{
					gem1 = Gamerule_1.gem_board1[ylim,xlim]
					with(gem1) spin()
				}
			else if gem1 = Gamerule_1.gem_board1[ylim,xlim]
				{
					with(gem1) unspin()
					gem1 = noone
				}
			else if (find_gemboard_posi(gem1,Gamerule_1) == ylim && abs(find_gemboard_posj(gem1,Gamerule_1) - xlim) == 1) || ((find_gemboard_posj(gem1,Gamerule_1) == xlim) && abs(find_gemboard_posi(gem1,Gamerule_1) - ylim) == 1)
				{
					
					//if Gamerule_1.IsGemActive2
					//{
					gem2 = Gamerule_1.gem_board1[ylim,xlim]
					if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
					{
						with(gem1) unspin()
						xx1 = gem1.x
						yy1 = gem1.y
						xx2 = gem2.x
						yy2 = gem2.y
				
						do_match(Gamerule_1)
						//}
					}
					else gem2 = noone
				}
			else
				{
					with(gem1) unspin()
					gem1 = Gamerule_1.gem_board1[ylim,xlim]
					with(gem1) spin()
				}
		}
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/
}
else if keyboard_check(global.ps1_select) || gamepad_button_check(global.gp[0],global.ps1_select)
	{
		if gem1 != noone && instance_exists(gem1) && instance_exists(Gamerule_1.gem_board1[ylim,xlim])
		{
			if Gamerule_1.gem_board1[ylim,xlim] != gem1 && Gamerule_1.gem_board1[ylim,xlim].ammoving = false && Gamerule_1.gem_board1[ylim,xlim].acc = 0
			{
				if (find_gemboard_posi(gem1,Gamerule_1) == ylim && abs(find_gemboard_posj(gem1,Gamerule_1) - xlim) == 1) || ((find_gemboard_posj(gem1,Gamerule_1) == xlim) && abs(find_gemboard_posi(gem1,Gamerule_1) - ylim) == 1)
				{				
					gem2 = Gamerule_1.gem_board1[ylim,xlim]
					if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
					{
						with(gem1) unspin()
						xx1 = gem1.x
						yy1 = gem1.y
						xx2 = gem2.x
						yy2 = gem2.y
				
						do_match(Gamerule_1)
					}
					else gem2 = noone
				}
			}
		}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/
	}
else if mouse_check_button_pressed(mb_left) && !global.bot1
	{
		if instance_position(mouse_x,mouse_y,Gem_1) != noone
		{
			image_alpha = 0
			gemtocheck = instance_position(mouse_x,mouse_y,Gem_1)
			xlimprevious = xlim
			ylimprevious = ylim
			xlim = find_gemboard_posj(gemtocheck,Gamerule_1)
			ylim = find_gemboard_posi(gemtocheck,Gamerule_1)
			x = Board_1.x + 64*xlim - 32
			y = Board_1.y + 64*ylim - 32
			
			if gem1 = noone
			{
				gem1 = gemtocheck
				with(gem1) spin()
			}
			else if gem1 = Gamerule_1.gem_board1[ylim,xlim]
			{
				with(gem1) unspin()
				gem1 = noone
			}
			else if (find_gemboard_posi(gem1,Gamerule_1) == ylim && abs(find_gemboard_posj(gem1,Gamerule_1) - xlim) == 1) || ((find_gemboard_posj(gem1,Gamerule_1) == xlim) && abs(find_gemboard_posi(gem1,Gamerule_1) - ylim) == 1)
				{
					
					//if Gamerule_1.IsGemActive2
					//{
					gem2 = Gamerule_1.gem_board1[ylim,xlim]
					if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
					{
						with(gem1) unspin()
						xx1 = gem1.x
						yy1 = gem1.y
						xx2 = gem2.x
						yy2 = gem2.y
				
						do_match(Gamerule_1)
						//}
					}
					else gem2 = noone
				}
			else
				{
					with(gem1) unspin()
					gem1 = Gamerule_1.gem_board1[ylim,xlim]
					with(gem1) spin()
				}
		}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/	
	}
else if mouse_check_button(mb_left) && !global.bot1
	{
		gemtocheck = instance_position(mouse_x,mouse_y,Gem_1)
		if gemtocheck != noone
		{
			xlimprevious = xlim
			ylimprevious = ylim
			xlim = find_gemboard_posj(gemtocheck,Gamerule_1)
			ylim = find_gemboard_posi(gemtocheck,Gamerule_1)
			x = Board_1.x + 64*xlim - 32
			y = Board_1.y + 64*ylim - 32
			if instance_exists(gem1)
			{
				xlim_gem1 = find_gemboard_posj(gem1,Gamerule_1)
				ylim_gem1 = find_gemboard_posi(gem1,Gamerule_1)
				if (xlim_gem1 = xlim)
				{
					xlimtouse = xlim_gem1
					ylimtouse = ylim_gem1 + sign(ylim-ylim_gem1)		
				}
				else if (ylim_gem1 = ylim)
				{
					ylimtouse = ylim_gem1
					xlimtouse = xlim_gem1 + sign(xlim-xlim_gem1)		
				}
			}
			if gem1 != noone && instance_exists(gem1) && instance_exists(Gamerule_1.gem_board1[ylimtouse,xlimtouse])
			{
				if Gamerule_1.gem_board1[ylimtouse,xlimtouse] != gem1 && Gamerule_1.gem_board1[ylimtouse,xlimtouse].ammoving = false && Gamerule_1.gem_board1[ylimtouse,xlimtouse].acc = 0
				{
					if (find_gemboard_posi(gem1,Gamerule_1) == ylimtouse && abs(find_gemboard_posj(gem1,Gamerule_1) - xlimtouse) == 1) || ((find_gemboard_posj(gem1,Gamerule_1) == xlimtouse) && abs(find_gemboard_posi(gem1,Gamerule_1) - ylimtouse) == 1)
					{				
						gem2 = Gamerule_1.gem_board1[ylimtouse,xlimtouse]
						if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
						{
							with(gem1) unspin()
							do_match(Gamerule_1)
						}
						else gem2 = noone
					}
				}
			}
		}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/	
		
	}
else if gamepad_button_check_pressed(global.gp[0],global.ps1_moveleft) //SPECIAL GAMEPAD CONTROLS ONLY HERE
{
	if xlim > 0
	{
		//unspin any gems anywhere
		with(gem1) unspin()
		gem1 = noone
		with(gem2) unspin()
		gem2 = noone
		//begin selecting
		if instance_exists(Gamerule_1.gem_board1[ylim,xlim])
		{
			if Gamerule_1.gem_board1[ylim,xlim].acc = 0 && Gamerule_1.gem_board1[ylim,xlim].ammoving = false
			{
				gem1 = Gamerule_1.gem_board1[ylim,xlim]
			}
		}
		if instance_exists(Gamerule_1.gem_board1[ylim,xlim-1])
		{
			if Gamerule_1.gem_board1[ylim,xlim-1].acc = 0 && Gamerule_1.gem_board1[ylim,xlim-1].ammoving = false
			{
				gem2 = Gamerule_1.gem_board1[ylim,xlim-1]
			}
		}
		//if both gems are okay, move them
		if instance_exists(gem1) && instance_exists(gem2)
		{
			if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
			{
				xx1 = gem1.x
				yy1 = gem1.y
				xx2 = gem2.x
				yy2 = gem2.y
				
				do_match(Gamerule_1)
			}
		}
			
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/	
}
else if gamepad_button_check_pressed(global.gp[0],global.ps1_moveright) //SPECIAL GAMEPAD CONTROLS ONLY HERE
{
	if xlim < Gamerule_1.board_xsize-1
	{
		//unspin any gems anywhere
		with(gem1) unspin()
		gem1 = noone
		with(gem2) unspin()
		gem2 = noone
		//begin selecting
		if instance_exists(Gamerule_1.gem_board1[ylim,xlim])
		{
			if Gamerule_1.gem_board1[ylim,xlim].acc = 0 && Gamerule_1.gem_board1[ylim,xlim].ammoving = false
			{
				gem1 = Gamerule_1.gem_board1[ylim,xlim]
			}
		}
		if instance_exists(Gamerule_1.gem_board1[ylim,xlim+1])
		{
			if Gamerule_1.gem_board1[ylim,xlim+1].acc = 0 && Gamerule_1.gem_board1[ylim,xlim+1].ammoving = false
			{
				gem2 = Gamerule_1.gem_board1[ylim,xlim+1]
			}
		}
		//if both gems are okay, move them
		if instance_exists(gem1) && instance_exists(gem2)
		{
			if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
			{
				xx1 = gem1.x
				yy1 = gem1.y
				xx2 = gem2.x
				yy2 = gem2.y
				
				do_match(Gamerule_1)
			}
		}
			
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/	
}
else if gamepad_button_check_pressed(global.gp[0],global.ps1_moveup) //SPECIAL GAMEPAD CONTROLS ONLY HERE
{
	if ylim > 0
	{
		//unspin any gems anywhere
		with(gem1) unspin()
		gem1 = noone
		with(gem2) unspin()
		gem2 = noone
		//begin selecting
		if instance_exists(Gamerule_1.gem_board1[ylim,xlim])
		{
			if Gamerule_1.gem_board1[ylim,xlim].acc = 0 && Gamerule_1.gem_board1[ylim,xlim].ammoving = false
			{
				gem1 = Gamerule_1.gem_board1[ylim,xlim]
			}
		}
		if instance_exists(Gamerule_1.gem_board1[ylim-1,xlim])
		{
			if Gamerule_1.gem_board1[ylim-1,xlim].acc = 0 && Gamerule_1.gem_board1[ylim-1,xlim].ammoving = false
			{
				gem2 = Gamerule_1.gem_board1[ylim-1,xlim]
			}
		}
		//if both gems are okay, move them
		if instance_exists(gem1) && instance_exists(gem2)
		{
			if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
			{
				xx1 = gem1.x
				yy1 = gem1.y
				xx2 = gem2.x
				yy2 = gem2.y
				
				do_match(Gamerule_1)
			}
		}
			
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/		
}
else if gamepad_button_check_pressed(global.gp[0],global.ps1_movedown) //SPECIAL GAMEPAD CONTROLS ONLY HERE
{
	if ylim < global.board_rows-1
	{
		//unspin any gems anywhere
		with(gem1) unspin()
		gem1 = noone
		with(gem2) unspin()
		gem2 = noone
		//begin selecting
		if instance_exists(Gamerule_1.gem_board1[ylim,xlim])
		{
			if Gamerule_1.gem_board1[ylim,xlim].acc = 0 && Gamerule_1.gem_board1[ylim,xlim].ammoving = false
			{
				gem1 = Gamerule_1.gem_board1[ylim,xlim]
			}
		}
		if instance_exists(Gamerule_1.gem_board1[ylim+1,xlim])
		{
			if Gamerule_1.gem_board1[ylim+1,xlim].acc = 0 && Gamerule_1.gem_board1[ylim+1,xlim].ammoving = false
			{
				gem2 = Gamerule_1.gem_board1[ylim+1,xlim]
			}
		}
		//if both gems are okay, move them
		if instance_exists(gem1) && instance_exists(gem2)
		{
			if !gem1.amLit && !gem2.amLit && gem2.acc = 0 && ((gem1.y - Board_1.y) mod 64 <= 1|| (gem1.y - Board_1.y) mod 64 >= 62)
			{
				do_match(Gamerule_1)
			}
		}
			
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/		
}

}
//press
if keyboard_check_pressed(global.ps1_left) || gamepad_button_check_pressed(global.gp[0],global.ps1_left)
{
	image_alpha = 1
	alarm[0] = -1
	if xlim > 0
	{
	xlimprevious = xlim
	xlim--
	x-=64
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/	
}

if keyboard_check_pressed(global.ps1_right) || gamepad_button_check_pressed(global.gp[0],global.ps1_right)
{
	image_alpha = 1
	alarm[0] = -1
	if xlim < Gamerule_1.board_xsize-1
	{
	xlimprevious = xlim
	xlim++
	x+=64
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/	
}

if keyboard_check_pressed(global.ps1_up) || gamepad_button_check_pressed(global.gp[0],global.ps1_up)
{
	image_alpha = 1
	alarm[0] = -1
	if ylim > 0
	{
	ylimprevious = ylim
	ylim--
	y-=64
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/	
}

if keyboard_check_pressed(global.ps1_down) || gamepad_button_check_pressed(global.gp[0],global.ps1_down)
{
	image_alpha = 1
	alarm[0] = -1
	if ylim < global.board_rows-1
	{
	ylimprevious = ylim
	ylim++
	y+=64
	}
/*SERVER ONLY--------------------------*/
scr_player_sendxy(obj_server,PLAYER_POS,player1)	
/*SERVER ONLY--------------------------*/	
}

//hold
if keyboard_check(global.ps1_left) || gamepad_button_check(global.gp[0],global.ps1_left)
{
	if alarm[0] = -1 alarm[0] = 20
}
else if keyboard_check(global.ps1_right) || gamepad_button_check(global.gp[0],global.ps1_right)
{
	if alarm[0] = -1 alarm[0] = 20
}
else if keyboard_check(global.ps1_up) || gamepad_button_check(global.gp[0],global.ps1_up)
{
	if alarm[0] = -1 alarm[0] = 20
}
else if keyboard_check(global.ps1_down) || gamepad_button_check(global.gp[0],global.ps1_down)
{
	if alarm[0] = -1 alarm[0] = 20
}
else alarm[0] = -1

}
else if Gamerule_1.controlallowed && global.bot1
{
	if (image_index == 1) image_index = 0 //normal indicator
}
else if !Gamerule_1.controlallowed //bot allowed?
{
	if (image_index == 0) image_index = 1 //red indicator
}
//
}

