/// @description Insert description here


//coins
alpha2 = 1
var file = ini_open("unlocks.ini")
coins = ini_read_real("Coins","value",0)
coinstogive = global.coinstogive
global.coinstogive = 0
ini_write_real("Coins","value",coins+coinstogive)
if coinstogive > 0 alarm[2] = 60
else alpha2 = 0
ini_close()


if global.winner = 0 {text1 = "WINNER"; text2 = "LOSER"; c1 = c_green; c2 = c_red}
else if global.winner = 1 {text1 = "LOSER"; text2 = "WINNER"; c1 = c_red; c2 = c_green}
else {text1 = "TIE"; text2 = "TIE"; c1 = c_orange; c2 = c_orange}

mps1 = global.ST_matches[0] / 180
mps2 = global.ST_matches[1] / 180

func = 0
alpha = 0
yy = 0
alarm[0] = 1