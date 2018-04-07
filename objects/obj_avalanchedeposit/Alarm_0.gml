/// @description Insert description here
// You can write your code in this editor
ammoving = true
alarm[1] = -1
x = lerp(xx,xdestination,-power(f-1,2)+1)
f+=0.025
if f <= 1 alarm[0] = 1
else {ammoving = false; obj_avalanchespawner.juststarted = false; alarm[1] = 1}
