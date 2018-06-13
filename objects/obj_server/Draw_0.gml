/// @description Insert description here
// You can write your code in this editor
if client_connected
{
	draw_text(x,y,"Client connected!")
}
else if server_socket < 0
{
	draw_text(x,y,"Error :(")
}
else
{
	draw_text(x,y,"Server up! Waiting for client...")
}
draw_text(x,y,"\n\nClient Ping: " + string(ping))