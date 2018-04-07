/* Desc

A hypercube

*/
amLocked = false //always false
skinnum = 7 //unmatchable
matchme = -1
justPowered = true
alarm[0] = 1 //justpowered
alarm[1] = 10 //particle
flag = false //Am I counted yet? (Used in Gem step)

hypedeath = part_system_create();

hypedeath_type = part_type_create();
part_type_shape(hypedeath_type,pt_shape_explosion)
part_type_size(hypedeath_type,0.5,0.5,0.1,1)
part_type_color(hypedeath_type,c_blue,c_red,c_green)
part_type_life(hypedeath_type,40,40)
part_type_alpha2(hypedeath_type,1,0)
part_type_orientation(hypedeath_type,0,360,10,0,0)

hypedeath_emit = part_emitter_create(hypedeath);


/* */
///Gem Movement variables
grav = 0.5;
vsp = 1;
movespeed = 4;
i = 0;
flag = 0;

/* */
/*  */
