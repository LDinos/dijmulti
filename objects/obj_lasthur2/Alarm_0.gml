/// @description checking for condition first
// You can write your code in this editor
if Gamerule_2.IsGemActive2
{
	if num_powers(Gamerule_2) > 0
	{
		i = 0
		j = 0
		alarm[1] = 5
	}
	else instance_create(x,y,obj_gemgameover2) //end
}
else alarm[0] = 1