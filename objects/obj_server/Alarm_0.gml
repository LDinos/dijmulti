/// @description Ping count
// This alarm will start running forever after the client is connected. 
// By the time the client sends a buffer CHECK_PING, this alarm will reset and re-begin.
// When that buffer is sent, the ping counter will be taken and will be divided / 60 (room speed) 
// to get in seconds, for example 0.1. Multiply that by 100, you get the ping in MS.
pingcounter++
alarm[0] = 1

