/// @description Define all particles here
// You can write your code in this editor
global.sys_above_gem = part_system_create()
part_system_depth(global.sys_above_gem,-2)

global.sys_below_gem = part_system_create()
part_system_depth(global.sys_below_gem,1)

global.sys_background = part_system_create()
part_system_depth(global.sys_background,3)

global.pr_gembreak = part_type_create();
part_type_shape(global.pr_gembreak,pt_shape_spark);
part_type_size(global.pr_gembreak,0.03,0.1,0,0);
part_type_scale(global.pr_gembreak,1,1);
part_type_color1(global.pr_gembreak,16777215);
part_type_alpha3(global.pr_gembreak,0,1,0);
part_type_direction(global.pr_gembreak,0,359,0,1);
part_type_gravity(global.pr_gembreak,0.02,270);
part_type_orientation(global.pr_gembreak,0,0,3,1,0);
part_type_blend(global.pr_gembreak,1);
part_type_life(global.pr_gembreak,35,45);

/*NEW LIGHTNING*/
global.part_star_stars = part_type_create();
part_type_sprite(global.part_star_stars,spr_par_starstar,0,0,0);
part_type_size(global.part_star_stars,0.01,0.10,0,0);
part_type_scale(global.part_star_stars,1,1);
part_type_color2(global.part_star_stars,16777215,14932142);
part_type_alpha1(global.part_star_stars,1);
part_type_speed(global.part_star_stars,1,1,0,0);
part_type_direction(global.part_star_stars,0,359,10,0);
part_type_gravity(global.part_star_stars,0,270);
part_type_orientation(global.part_star_stars,0,359,0,0,1);
part_type_blend(global.part_star_stars,1);
part_type_life(global.part_star_stars,10,10);

global.part_star_bolt = part_type_create();
part_type_sprite(global.part_star_bolt,spr_par_starbolt,0,0,0);
part_type_size(global.part_star_bolt,0.50,1,0,0);
part_type_scale(global.part_star_bolt,1,1);
part_type_color2(global.part_star_bolt,16777215,14932142);
part_type_alpha2(global.part_star_bolt,1,0);
part_type_speed(global.part_star_bolt,0.2,0.2,0,2);
part_type_direction(global.part_star_bolt,0,359,10,1);
part_type_gravity(global.part_star_bolt,0,270);
part_type_orientation(global.part_star_bolt,0,359,0,5,1);
part_type_blend(global.part_star_bolt,1);
part_type_life(global.part_star_bolt,10,10);
part_type_death(global.part_star_bolt,1,global.part_star_stars)

global.emit_newstar = part_emitter_create(global.sys_below_gem);
//part_emitter_region(Sname,global.emit_newstar,-32,32,-32,32,2,0);
//part_emitter_stream(Sname,global.emit_newstar,particle1,3);
/**/

/* GLASS TUBE */

global.pr_tube = part_type_create();
part_type_shape(global.pr_tube,pt_shape_spark);
part_type_size(global.pr_tube,0.10,0.10,0,0);
part_type_scale(global.pr_tube,1,1);
part_type_color1(global.pr_tube,956145);
part_type_alpha2(global.pr_tube,1,0);
part_type_speed(global.pr_tube,1.4,1.4,0,0);
part_type_direction(global.pr_tube,60,115,0,20);
part_type_gravity(global.pr_tube,0.02,270);
part_type_orientation(global.pr_tube,0,0,0,0,1);
part_type_blend(global.pr_tube,1);
part_type_life(global.pr_tube,60,60);




/* FOR FIRE */
global.partFire = part_type_create();
part_type_sprite(global.partFire,spr_partFire,0,0,1);
part_type_size(global.partFire,0.5,1,0,0);
part_type_color2(global.partFire,c_orange,c_red);
part_type_alpha3(global.partFire,1,1,0);
part_type_speed(global.partFire,1,1,0,0);
part_type_direction(global.partFire,85,95,0,5);
part_type_orientation(global.partFire,0,359,0,0,0);
part_type_blend(global.partFire,1);
part_type_life(global.partFire,5,10);

//Cinder Particle
global.partCinder = part_type_create();
part_type_shape(global.partCinder,pt_shape_flare);
part_type_size(global.partCinder,0.5,1,0,0);
part_type_color2(global.partCinder,c_orange,c_red);
part_type_alpha3(global.partCinder,1,1,0);
part_type_speed(global.partCinder,1,2,0,0);
part_type_direction(global.partCinder,85,95,0,0);
part_type_blend(global.partCinder,1);
part_type_life(global.partCinder,13,18);

/*---------------------*/

/*FOR LIGHTNING*/
//Particle System

//Glowy Particle
global.partLight = part_type_create();
part_type_shape(global.partLight, pt_shape_flare);
part_type_alpha2(global.partLight, 1, 0); 
part_type_direction(global.partLight,0,360,0,5);
part_type_speed(global.partLight, 1, 1, 0, 0);
part_type_size(global.partLight,0.1,0.1,0,0)
part_type_life(global.partLight,34,60);

//Lightning particle
global.partRay = part_type_create();
part_type_shape(global.partRay, pt_shape_disk);
part_type_sprite(global.partRay,spr_partFire,0,0,0)
part_type_alpha2(global.partRay, 1, 0); 
part_type_blend(global.partRay, 1); 
part_type_direction(global.partRay,0,90,90,5);
part_type_orientation(global.partRay,0,360,0,2,0);
part_type_speed(global.partRay, 1, 1, 0, 0);
part_type_size(global.partRay,1.2,1.2,0,0)
part_type_life(global.partRay,10,20);


/*---------------------*/

/* FOR GEM EXPLOSION */
global.gemexplodetype = part_type_create()
part_type_shape(global.gemexplodetype,pt_shape_cloud)
part_type_alpha3(global.gemexplodetype,0.5,1,0)
part_type_size(global.gemexplodetype,0.3,0.3,0.05,0)
part_type_life(global.gemexplodetype,30,50)
part_type_orientation(global.gemexplodetype,0,360,1,0,0)
part_type_colour1(global.gemexplodetype,c_white)

global.gemexplodetype2 = part_type_create()
part_type_shape(global.gemexplodetype2,pt_shape_cloud)
part_type_alpha3(global.gemexplodetype2,0.5,1,0)
part_type_size(global.gemexplodetype2,0.3,0.3,0.05,0)
part_type_life(global.gemexplodetype2,30,50)
part_type_orientation(global.gemexplodetype2,0,360,1,0,0)
part_type_colour1(global.gemexplodetype2,c_orange)

global.gemexplodetype3 = part_type_create()
part_type_shape(global.gemexplodetype3,pt_shape_explosion)
part_type_alpha2(global.gemexplodetype3,0.8,0)
part_type_size(global.gemexplodetype3,2,2,0,0)
part_type_life(global.gemexplodetype3,10,25)
part_type_orientation(global.gemexplodetype3,0,360,1,0,0)
part_type_colour1(global.gemexplodetype3,c_yellow)
/*--------------------*/

/*FOR LIGHTNING EXPLOSION*/
global.gemsmoketype = part_type_create()
part_type_shape(global.gemsmoketype,pt_shape_explosion)
part_type_alpha2(global.gemsmoketype,0.6,0)
part_type_life(global.gemsmoketype,60,100)
part_type_size(global.gemsmoketype,1,1,0.01,0)
part_type_orientation(global.gemsmoketype,0,360,4,0,0)

global.gemsmokesparkle = part_type_create()
part_type_sprite(global.gemsmokesparkle,sparkle,0,1,0)
part_type_blend(global.gemsmokesparkle,1)
part_type_alpha3(global.gemsmokesparkle,0.4,1,0)
part_type_life(global.gemsmokesparkle,50,70)
part_type_size(global.gemsmokesparkle,0.3,0.3,0,0)
part_type_direction(global.gemsmokesparkle,0,360,1,1)
part_type_speed(global.gemsmokesparkle,1,1,0,1)
/*----------------*/

/*FOR MULTIPLIER*/
global.pr_multi = part_type_create();
part_type_shape(global.pr_multi,pt_shape_flare);
part_type_size(global.pr_multi,0.4,0.80,0,0);
part_type_scale(global.pr_multi,0.20,0.40);
part_type_color1(global.pr_multi,16777215);
part_type_alpha3(global.pr_multi,0,1,0);
part_type_speed(global.pr_multi,1.2,1.5,0,0);
part_type_direction(global.pr_multi,0,359,1,0);
part_type_orientation(global.pr_multi,0,0,0,0,1);
part_type_blend(global.pr_multi,1);
part_type_life(global.pr_multi,25,35);

/*FOR SUPERNOVA*/

//Glowy Particle
global.partNovaLight = part_type_create();
part_type_shape(global.partNovaLight, pt_shape_flare);
part_type_alpha2(global.partNovaLight, 1, 0); 
part_type_direction(global.partNovaLight,0,360,0,5);
part_type_speed(global.partNovaLight, 1, 1, 0, 0);
part_type_size(global.partNovaLight,0.1,0.1,0,0)
part_type_life(global.partNovaLight,34,60);

//Lightning particle
global.partNovaRay = part_type_create();
part_type_shape(global.partNovaRay, pt_shape_disk);
part_type_colour_mix(global.partNovaRay, c_white, c_orange);
part_type_sprite(global.partNovaRay,spr_partFire,0,0,0)
part_type_alpha2(global.partNovaRay, 1, 0); 
part_type_blend(global.partNovaRay, 1); 
part_type_direction(global.partNovaRay,0,90,90,5);
part_type_orientation(global.partNovaRay,0,360,0,2,0);
part_type_speed(global.partNovaRay, 1, 1, 0, 0);
part_type_size(global.partNovaRay,1.2,1.2,0,0)
part_type_life(global.partNovaRay,10,20);

//Fire Particle
global.partNovaFire = part_type_create();
part_type_sprite(global.partNovaFire,spr_partFire,0,0,1);
part_type_size(global.partNovaFire,1,1.5,0,0);
part_type_color2(global.partNovaFire,c_blue,c_red);
part_type_alpha3(global.partNovaFire,1,1,0);
part_type_speed(global.partNovaFire,1,1,0,0);
part_type_direction(global.partNovaFire,85,95,0,5);
part_type_orientation(global.partNovaFire,0,359,0,0,0);
part_type_blend(global.partNovaFire,1);
part_type_life(global.partNovaFire,5,10);
/*------------------------*/


/*Septanova*/
global.partSeptafractal = part_type_create();
part_type_sprite(global.partSeptafractal,spr_fractal,0,0,0);
part_type_size(global.partSeptafractal,1,1,0,0);
part_type_scale(global.partSeptafractal,0.04,0.04);
part_type_color3(global.partSeptafractal,33023,8388672,255);
part_type_alpha2(global.partSeptafractal,1,0);
part_type_speed(global.partSeptafractal,0.30,0.30,0,0);
part_type_direction(global.partSeptafractal,0,359,0,1);
part_type_gravity(global.partSeptafractal,0,270);
part_type_orientation(global.partSeptafractal,0,359,5,0,1);
part_type_blend(global.partSeptafractal,1);
part_type_life(global.partSeptafractal,60,100);

//explosion
 global.partSeptaExplosion = part_type_create();
part_type_shape(global.partSeptaExplosion,pt_shape_spark);
part_type_size(global.partSeptaExplosion,0.10,0.40,0,0.1);
part_type_scale(global.partSeptaExplosion,1,1);
part_type_color3(global.partSeptaExplosion,255,16711680,65280);
part_type_alpha3(global.partSeptaExplosion,0,1,0);
part_type_speed(global.partSeptaExplosion,1,2,0,0);
part_type_direction(global.partSeptaExplosion,0,359,0,0);
part_type_orientation(global.partSeptaExplosion,0,0,0,0,1);
part_type_blend(global.partSeptaExplosion,1);
part_type_life(global.partSeptaExplosion,60,300);

global.partSeptaExplosion2 = part_type_create();
part_type_shape(global.partSeptaExplosion2,pt_shape_explosion);
part_type_size(global.partSeptaExplosion2,0.40,1,0.50,0);
part_type_scale(global.partSeptaExplosion2,1,1);
part_type_color3(global.partSeptaExplosion2,33023,16776960,16711680);
part_type_alpha2(global.partSeptaExplosion2,1,0);
part_type_speed(global.partSeptaExplosion2,0,0,0,0);
part_type_direction(global.partSeptaExplosion2,0,359,0,0);
part_type_gravity(global.partSeptaExplosion2,0,270);
part_type_orientation(global.partSeptaExplosion2,0,359,1,0,1);
part_type_blend(global.partSeptaExplosion2,1);
part_type_life(global.partSeptaExplosion2,30,40);


/*Octanova*/
global.partOctafractal = part_type_create();
part_type_sprite(global.partOctafractal,spr_fractal,0,0,0);
part_type_size(global.partOctafractal,1,1,0,0);
part_type_scale(global.partOctafractal,0.03,0.03);
part_type_color3(global.partOctafractal,33023,16776960,c_green);
part_type_alpha2(global.partOctafractal,1,0);
part_type_speed(global.partOctafractal,0.30,0.30,0,0);
part_type_direction(global.partOctafractal,0,359,0,1);
part_type_gravity(global.partOctafractal,0,270);
part_type_orientation(global.partOctafractal,0,359,5,0,1);
part_type_blend(global.partOctafractal,1);
part_type_life(global.partOctafractal,60,100);


