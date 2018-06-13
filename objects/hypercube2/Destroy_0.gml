/// @description Death
part_emitter_region(hypedeath,hypedeath_emit,x,x,y,y,ps_shape_diamond,ps_distr_gaussian)
part_emitter_burst(hypedeath,hypedeath_emit,hypedeath_type,1)
with(indicator_control)
{
if gem1 = other || gem2 = other
    {
    gem1 = noone
    gem2 = noone
    }
}
//global.AmMoving = false

