/// @param Gamerule_index
/// @param Board_index
/// @param Gem_index
/// @param num_gem_spawn

with(argument0) check_gaps(argument1)

//no gaps found
obj_avalanchedeposit.hidden_gems = 0
counter = 0 //number of gems that get created
gemstospawn = argument3 //number of gems needed to be created until loop stops

//lets store the gaps first
for(i=0;i<=7;i++)
{
	chooser[i] = 0 
	if argument0.gaps[i] > 0
	{
		chooser[i] = argument0.gaps[i]
	}
}

do
{
	//if we have gaps, spawn on the gaps first, if we dont, spawn anywhere u want idc
	cancheckempty = false
	for(i=0;i<=7;i++)
	{
		if chooser[i] > 0 cancheckempty = true
	}
	
	if cancheckempty //if we have gaps
	{
		gaptospawn = 0
		for(i=1;i<=7;i++)
		{
			if chooser[i] > chooser[gaptospawn]
			{
				gaptospawn = i
			}
		}

	}
	else //if the board is already filled, we dont care where to spawn
	{
		gaptospawn = irandom_range(0,7)
	}
	
	
	//remove any contact with spawned gems
	pliers = 0
	while instance_position(argument1.x + 64*gaptospawn,argument1.y - 64*(pliers+1),argument2)
	{
		pliers++
	}
	
	gems_created[counter,0] = instance_create(argument1.x + 64*gaptospawn,argument1.y - 64*(pliers+1),argument2)
	gems_created[counter,1] = gaptospawn //j
	counter++
	chooser[gaptospawn]--
	gemstospawn--

}
until gemstospawn <= 0 || instance_number(argument2) >= 64

if (instance_number(argument2) >= 64) obj_avalanchedeposit.hidden_gems += gemstospawn

//Now make sure we have possible moves from the created gems
if argument0.summoves2 = 0
{
	i = 0
	havedone = false //if we made a change below
	while (i < counter) && !havedone
	{
		skin = gems_created[i,0].skinnum //store on a variable cuz its cool
		j = gems_created[i,1]
		avalanche_spawn_script(argument0)
		i++
	}
}
