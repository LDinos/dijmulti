/// @description checking for condition first
// You can write your code in this editor
if Gamerule_1.IsGemActive2
{
	if num_powers(Gamerule_1) > 0
	{
		i = 0
		j = 0
		alarm[1] = 5
	}
	else
	{
		if !instance_exists(obj_server) instance_create(x,y,obj_gemgameover1) //end
		else instance_create(x,y,obj_online_gameover)	
	}
}
else alarm[0] = 1