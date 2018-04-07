///@param gem_to_follow
///@param horizontal|true|vertical|false|
if instance_exists(argument0)
{
	var disabler = instance_create(x,y,obj_gemdisabler)
	with(disabler)
	{
		dohor = argument1
		xx = argument0.x
		yy = argument0.y
		image_index = argument0.skinnum
		alarm[0] = 1
	}
}