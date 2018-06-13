/// @description Insert description here
// You can write your code in this editor
if pointstemp1 < p1_points
{
	if pointstemp1 + barspeed < p1_points
	{
		pointstemp1 += barspeed
	}
	else
	{
		pointstemp1 = p1_points
	}
}
else if pointstemp1 > p1_points
{
	if pointstemp1 - barspeed > p1_points
	{
		pointstemp1 -= barspeed
	}
	else
	{
		pointstemp1 = p1_points
	}
}


if pointstemp2 < p2_points
{
	if pointstemp2 + barspeed < p2_points
	{
		pointstemp2 += barspeed
	}
	else
	{
		pointstemp2 = p2_points
	}
}
else if pointstemp2 > p2_points
{
	if pointstemp2 - barspeed > p2_points
	{
		pointstemp2 -= barspeed
	}
	else
	{
		pointstemp2 = p2_points
	}
}