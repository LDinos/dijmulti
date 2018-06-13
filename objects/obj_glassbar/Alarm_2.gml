/// @description Insert description here
// You can write your code in this editor
if time > 0
{
	part_particles_create(global.sys_above_gem,x,y - 32*lerp(0,15.5,time/timedefault),global.pr_tube,1)
	alarm[2] = 15
}