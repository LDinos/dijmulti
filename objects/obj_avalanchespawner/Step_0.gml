/// @description Insert description here
// You can write your code in this editor

//PASS//
if turn = 2
{
	if keyboard_check_pressed(global.ps1_pass) || gamepad_button_check_pressed(global.gp[0],global.ps1_pass) 
	{
		if Gamerule_1.IsGemActive2 && Gamerule_2.IsGemActive2 && !gameover && !obj_avalanchedeposit.ammoving && !global.bot1 && !juststarted
		{
			event_user(0)
			//pass
			create_text(spr_pass,"fader")
			audio_play_sound(snd_pass,0,0)
			//
		}
	}
}
else
{
	if keyboard_check_pressed(global.ps2_pass) || gamepad_button_check_pressed(global.gp[1],global.ps2_pass) 
	{
		if Gamerule_1.IsGemActive2 && Gamerule_2.IsGemActive2 && !gameover && !obj_avalanchedeposit.ammoving && !global.bot2 && !juststarted
		{
			event_user(0)
			//pass
			create_text(spr_pass,"fader")
			audio_play_sound(snd_pass,0,0)
			//
		}
	}
}
//----//

//text to write
if turn = 2
	{	
		if global.ps1_pass = ord("P") button = "P"
		else button = "L1"
	}
else
	{
		if global.ps2_pass = ord("P") button = "P"
		else button = "L1"
	}
//

curnumgems1 = instance_number(Gem_1)
curnumgems2 = instance_number(Gem_2)
full1 = true
full2 = true

for(i=0;i<=7;i++)
{
	for(j=0;j<=7;j++)
	{
		if Gamerule_1.gemboard[i,j] = -1 full1 = false
		if Gamerule_2.gemboard[i,j] = -1 full2 = false
	}
}
