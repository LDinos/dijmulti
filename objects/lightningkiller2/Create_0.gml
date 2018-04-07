/* Desc

Kills the gems one by one, row by row / col by col, after
a lightning gem is exploded. The sprite is created on the
lightningObj object

*/
depth = -5
w_count = 1
for (p=0;p<=7;p++)
{
//effect_create_above(ef_explosion,x,gridy*p,0.5,c_red)
//effect_create_above(ef_explosion,gridx*p,y,0.5,c_red)
with(instance_position(x,Board_2.y + p*64,Gem_2)) {amLit = true}
with(instance_position(Board_2.x + p*64,y,Gem_2)) {amLit = true}
}
alarm[0] = 20

/* */
/*  */
