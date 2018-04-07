/// @description Insert description here
// You can write your code in this editor
if instance_exists(instance_position(x,y,Gem_1))
{
	x = instance_position(x,y,Gem_1).x
	y = instance_position(x,y,Gem_1).y
}
else if instance_exists(instance_position(x,y,Gem_2))
{
	x = instance_position(x,y,Gem_2).x
	y = instance_position(x,y,Gem_2).y
}
else instance_destroy()