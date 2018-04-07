draw_set_color(c_white);
application_surface_draw_enable(0);

uni_time = shader_get_uniform(shd_magnify,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_magnify,"mouse_pos");
var_mouse_pos_x = x;
var_mouse_pos_y = y-512

uni_resolution = shader_get_uniform(shd_magnify,"resolution");
var_resolution_x = camera_get_view_width(0);
var_resolution_y = camera_get_view_height(0);

uni_circle_radius = shader_get_uniform(shd_magnify,"circleRadius");
var_circle_radius = 0.10; //higher = more waves

uni_circle_zoom_min = shader_get_uniform(shd_magnify,"minZoom");
var_circle_zoom_min = 0.58; //higher = less distortion

uni_circle_zoom_max = shader_get_uniform(shd_magnify,"maxZoom");
var_circle_zoom_max = 0.46; //higher = faster
percent = 0
shader_enabled = true;

moveup = false
moveleft = false
movedown = false
moveright = false
//min0.58
//max0.46
//->
//min0.07
//max0.99
//->
//min0.58
//max0.46
//surf = surface_create(1280,720)
alarm[1] = 1
alarm[0] = 1