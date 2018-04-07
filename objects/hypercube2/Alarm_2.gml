/// @description Hover infobox
if !Gamerule.Islevelcomplete && !instance_exists(wheel_spinner)
{
inf = instance_create(x,y-32,infobox)
inf.image_index = 4
}

