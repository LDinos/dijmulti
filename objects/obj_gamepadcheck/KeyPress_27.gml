/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_client) && !instance_exists(obj_server)
{
	if !global.paused
	{
		//GENERAL
		with(obj_radio) audio_pause_sound(music)
		instance_deactivate_object(obj_radio)
		instance_deactivate_object(timer)
		instance_deactivate_object(obj_pipes)
		instance_deactivate_object(obj_glassbar)
		instance_deactivate_object(obj_danger)
		instance_deactivate_object(stopper)
		
		//P1
		instance_deactivate_object(obj_avalanchespawner)
		instance_deactivate_object(obj_cointurn)
		instance_deactivate_object(obj_avalanchedeposit)
		instance_deactivate_object(gem_dissappear)
		instance_deactivate_object(obj_deposit1)
		instance_deactivate_object(obj_lightning_timer1)
		instance_deactivate_object(obj_lightning_pipe)
		instance_deactivate_object(scorer1)
		instance_deactivate_object(lightningObj1)
		instance_deactivate_object(Gem_1)
		instance_deactivate_object(spawner1)
		instance_deactivate_object(player1)
		instance_deactivate_object(lightningkiller)
		instance_deactivate_object(obj_lasthur1)
		instance_deactivate_object(obj_gemgameover1)
		instance_deactivate_object(obj_textspeed1)
		instance_deactivate_object(Gamerule_1)
		
		//P2
		instance_deactivate_object(gem_dissappear2)
		instance_deactivate_object(obj_deposit2)
		instance_deactivate_object(obj_lightning_timer2)
		instance_deactivate_object(obj_lightning_pipe2)
		instance_deactivate_object(scorer2)
		instance_deactivate_object(lightningObj2)
		instance_deactivate_object(Gem_2)
		instance_deactivate_object(spawner2)
		instance_deactivate_object(player2)
		instance_deactivate_object(lightningkiller2)
		instance_deactivate_object(obj_lasthur2)
		instance_deactivate_object(obj_gemgameover2)
		instance_deactivate_object(obj_textspeed2)
		instance_deactivate_object(Gamerule_2)
		
		instance_create_depth(room_height,room_width,-20,obj_pause)
	}
	else
	{		
		instance_destroy(obj_pause)
		instance_activate_all()
		with(obj_radio) audio_resume_sound(music)
	}
	global.paused = !global.paused
}