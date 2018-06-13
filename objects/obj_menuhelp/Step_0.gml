/// @description Insert description here
// You can write your code in this editor
if ready = 1
{
	if keyboard_check_pressed(vk_escape)
	{
		room_goto(rm_menu)
	}
}
	if keyboard_check_pressed(vk_down)
	{
		control += 4
		control = clamp(control,0,8)
	}
	else if keyboard_check_pressed(vk_up)
	{
		control -= 4
		control = clamp(control,0,8)
	}
	else if keyboard_check_pressed(vk_right)
	{
		control++
		control = clamp(control,0,8)
	}
	else if keyboard_check_pressed(vk_left)
	{
		control--
		control = clamp(control,0,8)
	}
	
if keyboard_check_released(vk_escape) ready = 1
