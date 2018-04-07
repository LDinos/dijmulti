/// @description Insert description here
// You can write your code in this editor
if !global.bot1 && !global.bot2
{
room_goto(rm_multi)
}
else
{
	instance_destroy(obj_nobotsallow)
	instance_create(x,y,obj_nobotsallow)
}