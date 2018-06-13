/// @param device
/// @param leftmotor
/// @param rightmotor
/// @param duration
instance_destroy(obj_vibration)
vib = instance_create(0,0,obj_vibration)
with(vib)
{
	device = argument0
	leftmotor = argument1
	rightmotor = argument2
	duration = argument3
	event_user(0)
}