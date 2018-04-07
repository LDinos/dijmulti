acc = -4
stop = false
i = 1
do
{
	if instance_exists(instance_position(x,y- i*64,argument0))
	{
		pushme = instance_position(x,y - i*64,argument0)
		if (pushme.acc >=0) pushme.acc = -4
		else stop = true
		i++
	}
	else stop = true
}
until stop = true