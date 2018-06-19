/// @description Insert description here
if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)
{
	instance_create(0,0,obj_frontstats)
	instance_destroy()
}