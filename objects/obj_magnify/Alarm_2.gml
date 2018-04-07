/// @description Insert description here
// You can write your code in this editor
var_circle_zoom_min = lerp(var_circle_zoom_min,0.58,percent)
var_circle_zoom_max = lerp(var_circle_zoom_max,0.46,percent)
var_circle_radius = lerp(var_circle_radius,0,percent)
var_circle_radius+=0.005
percent += 0.1
if percent <= 1 alarm[2] = 1
else
{
	/// @description Insert description here
	// You can write your code in this editor
	application_surface_draw_enable(1);
	surface_resize(application_surface, display_get_gui_width(), display_get_gui_height())
	instance_destroy()
}