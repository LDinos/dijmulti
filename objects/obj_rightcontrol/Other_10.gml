/// @description Clicked right
// You can write your code in this editor
if !global.bot2
{
	if index < obj_menucontrol.count - 1 
	{
		index++
		if index = 1 image_index = 1
		else image_index = 2
		global.gp[1] = obj_menucontrol.available_devices[index,0]
		desc = obj_menucontrol.available_devices[index,1]
	}
	else
	{
		index = 0
		image_index = 0
		global.gp[1] = obj_menucontrol.available_devices[0,0]
		desc = obj_menucontrol.available_devices[0,1]
	}
}
else
{
	if index = 4
	{
		image_index = 0
		index = 0
	}
	else
	{
		index++
		image_index++
	}
}