ini_open("settings.ini")
global.VolMus = ini_write_real("Settings","VolMus",1)
global.VolFX = ini_write_real("Settings","VolFX",1)
global.VolVO = ini_write_real("Settings","VolVO",1)
ini_close()
blink = "|"
alarm[0] = 30
image_speed = 0
field = ""

