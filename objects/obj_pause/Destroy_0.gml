/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(music)
ini_open("settings.ini")
ini_write_real("Settings","VolMus",global.VolMus)
ini_write_real("Settings","VolFX",global.VolFX)
ini_write_real("Settings","VolVO",global.VolVO)
ini_close()