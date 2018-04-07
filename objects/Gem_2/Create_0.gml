/// @description Insert description here
// You can write your code in this editor
//Instance variables so that copy pasting code through gems will be easier
MyGem = Gem_2
MyGamerule = Gamerule_2
MyBoard = Board_2
MyLightObj = lightningObj2
MyLightKiller = lightningkiller2
MyPlayer = player2
MyDiss = gem_dissappear2
MyNet = obj_client
//BLOOM//
bloomIntensity = shader_get_uniform(shdr_bloom, "intensity");
bloomblurSize = shader_get_uniform(shdr_bloom, "blurSize");
bloom = false
varbloom = 0
//

//MAGNIFY//
uni_time = shader_get_uniform(shd_bright_contrast,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_bright_contrast,"mouse_pos");
var_mouse_pos_x = mouse_x - camera_get_view_x(0);
var_mouse_pos_y = mouse_y - camera_get_view_y(0);

uni_resolution = shader_get_uniform(shd_bright_contrast,"resolution");
var_resolution_x = camera_get_view_width(0);
var_resolution_y = camera_get_view_height(0);

uni_brightness_amount = shader_get_uniform(shd_bright_contrast,"brightness_amount");
var_brightness_amount = .4;

uni_contrast_amount = shader_get_uniform(shd_bright_contrast,"contrast_amount");
var_contrast_amount = 0;

shader_enabled = true;
full_screen_effect = true;
//
_i = floor((y-MyBoard.y+63)/64)
_j = (x-MyBoard.x+63) div 64
crap = false
myid = -4
if instance_exists(obj_server)
{
	i = 0
	do
	{
		if global.gemlist[i] == noone
		{
			global.gemlist[i] = i
			myid = i
		}
		i++
	}
	until (myid != -4)
}
image_xscale = MyGamerule.images_res
image_yscale = MyGamerule.images_res
le1 = noone
le2 = noone
le3 = noone
le4 = noone
le5 = noone
le6 = noone

alpharand = 0
amLocked = false// obsolete
amexplode = false//am i on blazing speed?
matchnear = false
ammoving = false
amMulti = false
amTimeGem = false
amSpecial = 0 //0 = false, 1 = special one, 2 = special two, 3 = special three...
TimeGem = 0 //either +5 or +10 if its timegem
if MyGamerule.multiallowed && MyGamerule.Gamestart && MyGamerule.multinum = 0 && MyGamerule.xplier < 8
{
	if instance_position(x,y,MyBoard) = noone check_possibility_multi(MyGamerule)
}
if MyGamerule.timegemallowed && MyGamerule.Gamestart && !MyGamerule.timegemcooldown
{
	if instance_position(x,y,MyBoard) = noone check_possibility_timegem(MyGamerule)
}
dontshake = false //used for xymover when destroyed. tis willl get true if it gets destroyed by explosion
amLit = false
matchme = -1
amPowered = false
xmover = 0
ymover = 0
gempower = 0
moving = false //moving in match animation?
spinning = false
skinnum = irandom_range(0,Gamerule_1.num_skin)
image_index = skinnum
image_speed = 0
switch skinnum
{
	case 0: mycolor = c_red break;
	case 1: mycolor = c_white break;
	case 2: mycolor = c_green break;
	case 3: mycolor = c_yellow break;
	case 4: mycolor = c_purple break;
	case 5: mycolor = c_orange break;
	case 6: mycolor = c_blue break;
	default: mycolor = c_red break;
}
acc = 0
alarm[3] = 1

