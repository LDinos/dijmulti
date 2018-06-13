/// @description Insert description here
// You can write your code in this editor
if audio_group_is_loaded(audiogroup_music) && audio_group_is_loaded(audiogroup_voice)
{
	if file_exists("settings.ini")
	{
		ini_open("settings.ini")
			global.VolMus = ini_read_real("Settings","VolMus",1)
			global.VolFX = ini_read_real("Settings","VolFX",1)
			global.VolVO = ini_read_real("Settings","VolVO",1)
			audio_group_set_gain(audiogroup_music,global.VolMus,0)
			audio_group_set_gain(audiogroup_voice,global.VolVO,0)
			audio_group_set_gain(audiogroup_default,global.VolFX,0)
		ini_close()
	}
	instance_create(0,0,obj_intro)
	instance_destroy()
}
