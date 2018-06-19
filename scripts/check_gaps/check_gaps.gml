/// @param Board_index
var mylist = ds_list_create()
var yy = argument0.y
var xx = argument0.x
var _gem;
var counter;

if argument0 = Board_1 _gem = Gem_1
else _gem = Gem_2
for(i=0;i<8;i++)
{
	counter = 0
	
	//Search for gems and move them out of place until the end
	do 
	{
		var obj_found = collision_line(xx + i*64, yy - 32, xx + i*64, yy*7 + 32, _gem, false, true)
		if obj_found != noone
		{
			counter++
			obj_found.y-= 64*8
			ds_list_add(mylist,obj_found)			
		}
	}
	until (obj_found == noone)
	
	//move them back
	for(j=0;j<ds_list_size(mylist);j++)
	{
		with(mylist[|j]) y+= 64*8
	}
	
	//clear the list and make the gaps[i]
	ds_list_clear(mylist)
	gaps[i] = 8 - counter

	
}
ds_list_destroy(mylist)
/*
for(j=0;j<=board_xsize-1;j++)
{
	gaps[j] = 0
	for(i=0;i<=global.board_rows-1;i++)
	{
		if gems_fallen[i,j] = noone //|| !instance_exists(gems_fallen[i,j])
		{
			gaps[j]++
		}
	}
}