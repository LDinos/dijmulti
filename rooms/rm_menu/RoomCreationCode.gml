audio_group_stop_all(audiogroup_music)
global.paused = false
if file_exists("settings.ini")
{
	ini_open("settings.ini")
		global.VolMus = ini_read_real("Settings","VolMus",1)
		global.VolFX = ini_read_real("Settings","VolFX",1)
		global.VolVO = ini_read_real("Settings","VolVO",1)
		audio_group_set_gain(audiogroup_music,global.VolMus,120)
		audio_group_set_gain(audiogroup_voice,global.VolVO,120)
		audio_group_set_gain(audiogroup_default,global.VolFX,120)
		global.user1 = ini_read_string("Users","user1","Player 1")
		global.user2 = ini_read_string("Users","user2","Player 2")
		if (global.user1 == "bot" || global.user1 == "BOT") global.bot1 = true
		else global.bot1 = false
		if (global.user2 == "bot" || global.user2 == "BOT") global.bot2 = true
		else global.bot2 = false
	ini_close()
	if !global.bot1 ini_create_unlocks("unlocks_" + string(global.user1) + ".ini")
	if !global.bot2 ini_create_unlocks("unlocks_" + string(global.user2) + ".ini")
	instance_create(0,0,obj_menucontrol)
	instance_create(0,0,obj_rightcontrol)
	instance_create(0,0,obj_leftcontrol)
	global.username = global.user1
}
else
{
	instance_create(0,0,obj_firsttime)
}
randomise()