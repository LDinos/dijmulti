/// @description instance_destroy();
/// @function instance_destroy
with(Gem_1) acc = 0
instance_destroy();
if !instance_exists(lightningObj1)
{
Gamerule_1.lightOn = false //no longer producing lightning, now the gems can move :)
with(obj_server)
{
	buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,LIGHTOFF) //2
	network_send_packet(client_socket,buffer,buffer_tell(buffer))
}
}


