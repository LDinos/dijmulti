/// @description Gem structure
if Gamerule.gemIsMoving = false
if global.AmMoving = false && global.lightOn = false && global.flameOn = false && Gamerule.fruit_exploding = false
{
{

if vsp = 0 //if gem is not moving 
    {
    if flag = 0 
        {
            flag = 1;
            if audio_is_playing(gemclick) = false 
            {
                audio_play_sound(gemclick,1,false);
            }
        }
    }

/*Gem movement */



vsp += grav;
if (place_meeting(x,y+vsp,Gem))
{
    while(!place_meeting(x,y+sign(vsp),Gem))
    {
        y+=sign(vsp);
    }
    vsp = 0;
    
}

else if (place_meeting(x,y+vsp,stopper))
{
    while(!place_meeting(x,y+sign(vsp),stopper))
    {
        y+=sign(vsp);
    }
    vsp = 0;
    
}

else if (place_meeting(x,y+vsp,hypercube))
{
    while(!place_meeting(x,y+sign(vsp),hypercube))
    {
        y+=sign(vsp);
    }
    vsp = 0;
    
}
else if (place_meeting(x,y+vsp,Coal))
{
    while(!place_meeting(x,y+1,Coal))
    {
        y+=1;
    }
    vsp = 0;
    
}
y+=vsp*global.timescale ;

}
}
/*Fade off transition*/
if image_alpha = 0 { instance_destroy() }



/* */
/*  */
