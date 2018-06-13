image_speed = 0.5
/* Desc

The lightning itself. Mostly its doubled, since its a cross
lightning. Uses color aswell

*/
depth = -10
glowalpha = 1
color = c_red
skinnum = -1
//if instance_position(x,y,Board_1) = noone instance_destroy();
//Set alarm
image_yscale = 1.7
Gamerule_2.lightOn = true
with(Gem_2) acc = 0
with(obj_client)
{
	buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,LIGHTON) //2
	network_send_packet(client_socket,buffer,buffer_tell(buffer))
}
alarm[0] = 75
/* */
/*  */
