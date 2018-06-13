/// @description Insert description here
// You can write your code in this editor
ip = "0.0.0.0"
client_socket = noone
server_socket = network_create_server(network_socket_tcp, 6969, 2);
client_connected = false
buffer = buffer_create(1,buffer_grow,1)
ping = 0
pingcounter = 0
alarm[1] = 30 //show ping every 0.5 seconds