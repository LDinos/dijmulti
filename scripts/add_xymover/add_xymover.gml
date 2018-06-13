///add_xymover(GEM_INDEX)
// Adds to the xmover or ymover of the near gems after a cascade
if argument0 = Gem_1 gmid = Gamerule_1
else gmid = Gamerule_2

if !gmid.lightOn
{
	with(collision_point(x+64,y,argument0,false,true))
		{
			xmover = 5
			ymover = 0
			alarm[0] = 1
		}
	with(collision_point(x-64,y,argument0,false,true))
		{
			xmover = -5
			ymover = 0
			alarm[0] = 1
		}
	with(collision_point(x,y+64,argument0,false,true))
		{
			xmover = 0
			ymover = 5
			alarm[0] = 1
		}
	with(collision_point(x,y-64,argument0,false,true))
		{
			xmover = 0
			ymover = -5
			alarm[0] = 1
		}
}