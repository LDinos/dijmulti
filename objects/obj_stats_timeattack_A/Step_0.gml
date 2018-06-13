/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)
{
	instance_create(0,0,obj_stats_lightning_A)
	instance_destroy()
}