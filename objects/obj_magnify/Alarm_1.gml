/// @description Insert description here
// You can write your code in this editor
var_circle_zoom_min = lerp(var_circle_zoom_min,0.07,percent)
var_circle_zoom_max = lerp(var_circle_zoom_max,0.99,percent)
percent += 0.1
var_circle_radius+=0.005
if percent > 1
{
	percent = 0
	alarm[2] = 1
}
else alarm[1] = 1
