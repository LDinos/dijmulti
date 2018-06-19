/// @description Insert description here
doonce = false
amover = false
if instance_exists(obj_server) gamerule = Gamerule_1
else gamerule = Gamerule_2
gamerule.spawnallowed = false
i = 0
alarm[0] = 1