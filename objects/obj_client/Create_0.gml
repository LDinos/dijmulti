/// @description Insert description here
// You can write your code in this editor
ping = 0
network_set_config(network_config_connect_timeout,3000)
textmsg = ""
client_socket = network_create_socket(network_socket_tcp);
server = network_connect(client_socket , string(global.ip), 6969);
if server < 0
    {
    textmsg = "No server found"
	room_goto(rm_multi)
	
    }
else
    {
    //show_error("Connected!",false)
    }
buffer = buffer_create(1,buffer_grow,1)
