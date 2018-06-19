/// @description lightning
gem[0] = noone
gem[1] = noone
gem[2] = noone
gem[3] = noone
if w_count <= 7
{
    if instance_position(x-(w_count*64),y,Gem_2) != noone
	{
    gem[0] = instance_position(x-(w_count*64),y,Gem_2)
	}
    
    if instance_position(x+(w_count*64),y,Gem_2) != noone
	{
    gem[1] = instance_position(x+(w_count*64),y,Gem_2)
	}
    
    if instance_position(x,y+(w_count*64),Gem_2) != noone
	{
        gem[2] = instance_position(x,y+(w_count*64),Gem_2)
	}
    
    if instance_position(x,y-(w_count*64),Gem_2) != noone
    {
		gem[3] = instance_position(x,y-(w_count*64),Gem_2)
	}
    
    for(i=0;i<=3;i++)
    {       
        with(gem[i]) 
        {
            if amLit
            {
            part_particles_create_colour(global.sys_above_gem,x,y,global.gemsmoketype,mycolor,1)
            part_particles_create(global.sys_above_gem,irandom_range(x-32,x+32),irandom_range(y-32,y+32),global.gemsmokesparkle,irandom_range(6,10))                
            with(Gamerule_2) {script_execute(points_add,20); style_add(20)}
			audio_play_sound(snd_gemdestroyed,0,0)
			vibrate(global.gp[1],1,1,10)
            instance_destroy()          
            }
        }
        
    }
    w_count++
    alarm[0] = 5
    
}
        

