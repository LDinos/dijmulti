///@param Gamerule_index
///@param time_var
if argument0.total_timegem + argument1 > 60
{
	argument0.total_timegem = 60
}
else argument0.total_timegem += argument1

if argument0 = Gamerule_1
{
	with(obj_deposit1) event_user(0)
}
else with(obj_deposit2) event_user(0)