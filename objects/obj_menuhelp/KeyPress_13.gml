/// @description Insert description here
// You can write your code in this editor
switch control
{
	case 0:
		global.helptouse = spr_help_00
		break;
	case 1:
		global.helptouse = spr_help_01
		break;
	case 2:
		global.helptouse = spr_help_02
		break;
	case 3:
		global.helptouse = spr_help_03
		break;
	case 4:
		global.helptouse = spr_help_04
		break;
	case 5:
		global.helptouse = spr_help_05
		break;
	case 6:
		global.helptouse = spr_help_06
		break;
	case 7:
		global.helptouse = spr_help_07
		break;
}

if (control = 8) room_goto(rm_menu)
else
{
	instance_create(0,0,obj_helpbox)
	instance_destroy()
}