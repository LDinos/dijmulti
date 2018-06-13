/// @description Insert description here
// You can write your code in this editor
image_index = control

if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)
{

if control = 0 room_goto(rm_timeattack)
else if control = 1 room_goto(rm_lightning)
else room_goto(rm_avalanche)

}