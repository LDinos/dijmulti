/// @description Clicked left
// You can write your code in this editor
if !global.bot2
{
	if index = 0  
	{
		index = obj_menucontrol.count - 1
		if index = 1 image_index = 1
		else image_index = 2
		global.gp[1] = obj_menucontrol.available_devices[index,0]
		desc = obj_menucontrol.available_devices[index,1]
	}
	else
	{
		index--
		if index = 0 image_index = 0
		else if index = 1 image_index = 1
		else image_index = 2
		global.gp[1] = obj_menucontrol.available_devices[index,0]
		desc = obj_menucontrol.available_devices[index,1]
	}
}
else
{
	if index = 0
	{
		image_index = 4
		index = 4
	}
	else
	{
		index++
		image_index--
	}
}