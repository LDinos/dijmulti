/// @description Insert description here
if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
{
	if (room = rm_stats_timeattack) instance_create(0,0,obj_stats_timeattack_C)
	else if (room = rm_stats_lightning) instance_create(0,0,obj_stats_lightning_C)
	instance_destroy()
}
else if keyboard_check_pressed(vk_enter) room_goto(rm_menu)