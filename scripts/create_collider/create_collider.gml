///@param destroy_time
blocker = instance_create(x,y,stopper)
	with(blocker)
	{
		x -= 32
		y -= 32
		image_xscale = 64/sprite_width
		image_yscale = 64/sprite_height
		alarm[0] = argument0
	}