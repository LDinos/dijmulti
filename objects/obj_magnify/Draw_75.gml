//var_time_var+=0.04;
var_mouse_pos_x = x;
var_mouse_pos_y = y-512;
shader_set(shd_magnify);
    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_circle_radius, var_circle_radius);
    shader_set_uniform_f(uni_circle_zoom_min, var_circle_zoom_min);
    shader_set_uniform_f(uni_circle_zoom_max, var_circle_zoom_max);
	//if surface_exists(surf) draw_surface(surf,0,0)
	//else surf = surface_create(1280,720)
	draw_surface(application_surface,0,0)
shader_reset();

//else surf = surface_create(1280,720)

//radius 0.07
//minimum 0.11
//maximum 0.87