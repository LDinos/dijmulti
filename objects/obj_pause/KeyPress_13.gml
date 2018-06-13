/// @description Insert description here
// You can write your code in this editor
if control = 0
{
	instance_destroy()
	room_goto(rm_menu)
}
else if control = 1
{
		instance_activate_all()
		instance_destroy(obj_pause)
		with(obj_radio) audio_resume_sound(music)
		global.paused = !global.paused
}