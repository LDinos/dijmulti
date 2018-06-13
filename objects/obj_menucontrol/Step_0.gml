/// @description Insert description here
// You can write your code in this editor
image_index = control

if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)
{
	
if control = 7
{
	room_goto(rm_menustats)
}
else if control = 8
{
	room_goto(rm_menuoptions)
}
else if control = 9
{
	room_goto(rm_menuhelp)
}
else if control = 4
{
	if global.bot1
		{
			global.botdifficulty1 = obj_leftcontrol.image_index
		}
		if global.bot2
		{
			global.botdifficulty2 = obj_rightcontrol.image_index
		}
	if (global.gp[1] != global.gp[0]) || (global.bot1) || (global.bot2)
	{		
		room_goto(rm_menu_gamemode)
	}
	else {instance_destroy(obj_identical); instance_create(0,0,obj_identical)}
}
else if control = 5
	{
		instance_create(0,0,obj_rename2)
		instance_destroy()
	}
else if control = 6
	{
		instance_create(0,0,obj_rename1)
		instance_destroy()
	}
else if control = 3
	{
		with(obj_rightcontrol) event_user(0)
	}
else if control = 2
	{
		with(obj_rightcontrol) event_user(1)
	}
else if control = 1
	{
		with(obj_leftcontrol) event_user(0)
	}
else if control = 0
	{
		with(obj_leftcontrol) event_user(1)
	}
	
}