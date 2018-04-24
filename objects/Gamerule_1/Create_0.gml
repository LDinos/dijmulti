/// @description Insert description here
// You can write your code in this editor
flameon = false
color = c_red
OPT_lightallowed = true
iam = Gamerule_1
global.version = "v0.14d"
for(i=0;i<global.board_rows*8 + 10;i++) global.gemlist[i] = noone //we use 70 instead of 64 just so we can have a little more space in bug cases
num_skin = 6 //number of skins, beginning from 0
if room = rm_avalanche num_skin = 5
board_xsize = 8
board_ysize = 8
total_timegem = 0
images_res = .25
bot = global.bot1
controlallowed = true //are we allowed to move cursors
if room = rm_avalanche spawnallowed = false
else spawnallowed = true
gameover = false
style = 0
matches = 0
future_summoves = 0 //after an AHM initilization, this becomes 1 so it wont redo AHM work for no reason. This gets reseted when gemactive = 1
summoves2 = 0 //number of possible moves
timegemcooldown = false
if room = rm_avalanche || room = rm_tugofwar blazingallowed = false
else blazingallowed = true
blazingshouldup = false //did we do a match to make the blaze go up? used in matchstep
blazingspeed = false
blazingspeedchain = 0 //on 15, blazing goes on
blazingcounter = 140
alarm[3] = 1
for(i=0;i<=global.board_rows-1;i++)
	{
		for(j=0;j<=Gamerule_1.board_xsize-1;j++)
		{
			gems_fallen[i,j] = -4
			gem_board1[i,j] = -4
		}
	}
above_ready = false
	
doonce = 1
multinum = 0
xplier = 1
if room = rm_lightning timegemallowed = true
else timegemallowed = false
if room = rm_timeattack multiallowed = true
else multiallowed = false
Gamestart = false
alarm[2] = 60 //gamestart

lightOn = false
hypeallowed = false

cursor_x1 = 3
cursor_x2 = 0
cursor_y1 = 3
cursor_y2 = 0

points = 0
combo = 0
depth = -2
IsGemActive = false
IsGemActive2 = false
moving = false //are gems doing match animation?
instance_create_depth(Board_1.x - 32, (Board_1.y + 32) + 64*(global.board_rows-1),-10,stopper)
check_summoves()
check_gaps()