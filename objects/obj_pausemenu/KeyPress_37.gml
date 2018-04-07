/// @description Insert description here
// You can write your code in this editor
switch control
{	
	case 2:
		if (global.VolVO > 0) global.VolVO-=0.05
		break;
	case 3:
		if (global.VolMus > 0) global.VolMus-=0.05
		break;
	case 4:
		if (global.VolFX > 0) global.VolFX-=0.05
		break;
	default: if display_get_sleep_margin() > 0 display_set_sleep_margin(display_get_sleep_margin()-1) break;
}

audio_group_set_gain(audiogroup_music,global.VolMus,0)
audio_group_set_gain(audiogroup_voice,global.VolVO,0)
audio_group_set_gain(audiogroup_default,global.VolFX,0)