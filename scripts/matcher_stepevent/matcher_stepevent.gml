
/* Function in which every row is checked if gems are matched. It goes like this; 
//we search every gem from the second position and compare its skin with the first one. If its the same, make n += 1. 
//Now, we check the third. If the third one isnt the same as the second one, n resets to 1.
//If we had reached n > 3 and the j'th gem isnt the same as the j'th gem, then we see what n grade was our match.
Should it be a 3 match, call a 3 match on the centered gem. Should it be 4th, call 4th etc... */
//if !global.debug 
//0 match
//1 flame
//2 lightning
//3 star
//4 nova
//5 septa
//6 octa
//Then check for horizontal matches
center_gem = noone
nummatches = 0 //for doubleset soundeffect
with(argument0) matchme = -1
for (i=0;i<=global.board_rows-1;i+=1)
    {
        n = 1
        for (j=1;j<=7;j+=1)
        {
        
          if gem_board1[i,j] = noone || gem_board1[i,j-1] = noone
            {
				script_execute(matcher_script1,0)
            }
          else if gem_board1[i,j].skinnum = gem_board1[i,j-1].skinnum
            {
                n++
            }
          else {
				center_gem = noone
				if n >=3 nummatches++
                script_execute(matcher_script1,0)
            }
          if j = 7 // on last check, check again since we dont have a next check.
            {
	            if n >=3 nummatches++
	            script_execute(matcher_script1,1)
            }
                          
        }
    }
//Now check vertical ones, while having in mind diagonal too
center_gem = noone
for (i=0;i<=7;i+=1)
    {
        n2 = 1
        for (j=1;j<=global.board_rows-1;j+=1)
        {
          if gem_board1[j,i] = noone || gem_board1[j-1,i] = noone
            {
				script_execute(matcher_script2,0)
            }
          else if gem_board1[j,i].skinnum = gem_board1[j-1,i].skinnum && gem_board1[j,i].sprite_index != spr_hypercube && gem_board1[j-1,i].sprite_index != spr_hypercube
            {
                n2++
            }
          else 
			{
				center_gem = noone
                if n2 >=3 nummatches++  
                script_execute(matcher_script2,0)        
            }
          if j = global.board_rows-1 // on last check, check again since we dont have a next check.
            {
				if n2 >=3 nummatches++
				script_execute(matcher_script2,1) 
            }
                       
        }
    }
//Now do their script
havecombo = false
for (i=0;i<=global.board_rows-1;i+=1)
    {
        for (j=0;j<=7;j+=1)
        {
        if instance_exists(gem_board1[i,j])// != noone
        {
			if gem_board1[i,j].matchme >= 0
			{
				
				havecombo = true
				if blazingshouldup && blazingallowed
				{
					blazing_check()
					blazingspeedchain++
					blazingcounter = 140
				}
				blazingshouldup = false
			}
			
			if gem_board1[i,j].matchme = 6
			{
				with(gem_board1[i,j]) make_power(argument0,5)//script_execute(make_octanova,argument0)
                script_execute(points_add,600)
				if (combo >= 1) style_add(600)
                //script_execute(create_score_text,100,gem_board1[i,j].x,gem_board1[i,j].y,gem_board1[i,j].mycolor)
                audio_play_sound(snd_octacreate,0,false)
                audio_play_sound(snd_lightcreate,0,false)
                //with(obj_challenger) event_user(0) //for bonus challenge
			}
			else if gem_board1[i,j].matchme = 5
			{
				with(gem_board1[i,j]) make_power(argument0,4)//script_execute(make_septanova,argument0)
                script_execute(points_add,250)
				if (combo >= 1) style_add(250)
                //script_execute(create_score_text,100,gem_board1[i,j].x,gem_board1[i,j].y,gem_board1[i,j].mycolor)
                audio_play_sound(snd_septacreate,0,false)
                audio_play_sound(snd_lightcreate,0,false)
                //with(obj_challenger) event_user(0) //for bonus challenge
			}
			else if gem_board1[i,j].matchme = 4 
            {
                with(gem_board1[i,j]) make_power(argument0,3)//script_execute(make_supernova,argument0)
                script_execute(points_add,100)
				if (combo >= 1) style_add(100)
                //script_execute(create_score_text,100,gem_board1[i,j].x,gem_board1[i,j].y,gem_board1[i,j].mycolor)
                audio_play_sound(snd_supernovacreate,0,false)
                audio_play_sound(snd_lightcreate,0,false)
                //with(obj_challenger) event_user(0) //for bonus challenge
            }
            else if gem_board1[i,j].matchme = 3 
            {
				//script_execute(create_score_text,50,gem_board1[i,j].x,gem_board1[i,j].y,gem_board1[i,j].mycolor)
                with(gem_board1[i,j]) make_power(argument0,2)//script_execute(make_light,argument0)
                script_execute(points_add,50)  
				if (combo >= 1) style_add(50)
                //with(obj_challenger) event_user(0) //for bonus challenge
                audio_play_sound(snd_lightcreate,0,false)
                
            }
            else if gem_board1[i,j].matchme = 2 
            {
                if !hypeallowed
                {
                    //script_execute(create_score_text,50,gem_board1[i,j].x,gem_board1[i,j].y,gem_board1[i,j].mycolor)
                    with(gem_board1[i,j]) make_power(argument0,2)//script_execute(make_light,argument0)
                    script_execute(points_add,50) 
					if (combo >= 1) style_add(50)
                    //with(obj_challenger) event_user(0) //for bonus challenge
                    audio_play_sound(snd_starcreate,0,false)
                }
                else
                {
                    //script_execute(create_score_text,50,gem_board1[i,j].x,gem_board1[i,j].y,gem_board1[i,j].mycolor)
                    with(gem_board1[i,j]) script_execute(make_hype,argument0)
                    script_execute(points_add,50)                
					if (combo >= 1) style_add(50)
                    //with(obj_challenger) event_user(0) //for bonus challenge
                    audio_play_sound(snd_hypecreate,0,false)
                }
            }
             else if gem_board1[i,j].matchme = 1 
            {
                with(gem_board1[i,j]) make_power(argument0,1)//script_execute(make_flame,argument0);
                script_execute(points_add,25)
				if (combo >= 1) style_add(25)
                //script_execute(create_score_text,25,gem_board1[i,j].x,gem_board1[i,j].y,gem_board1[i,j].mycolor)
                //with(obj_challenger) event_user(0) //for bonus challenge
                audio_play_sound(snd_flamecreate,0,false)
            }
            else if gem_board1[i,j].matchme = 0 
            { 
                with(gem_board1[i,j]) if !amPowered instance_destroy();
                //with(obj_challenger) event_user(0) //for bonus challenge
                
            }          
            
        }

        }
    }
if nummatches > 1 audio_play_sound(snd_doubleset,0,0)
if havecombo
{
matches++
combo_check()
combo++
with(obj_server)
{
	//buffer = buffer_create(1024,buffer_fixed,1)
	buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,GAMERULE_INFO)
	buffer_write(buffer,buffer_u8,other.matches)
	buffer_write(buffer,buffer_u8,other.timegemcooldown)
	buffer_write(buffer,buffer_u8,other.blazingshouldup)
	buffer_write(buffer,buffer_u8,other.blazingspeed)
	buffer_write(buffer,buffer_u8,other.blazingspeedchain)
	buffer_write(buffer,buffer_u8,other.blazingcounter)
	network_send_packet(client_socket,buffer,buffer_tell(buffer))
	//buffer_delete(buffer)
}
with(obj_client)
{
	//buffer = buffer_create(1024,buffer_fixed,1)
	buffer_resize(buffer,1) buffer_seek(buffer,buffer_seek_start,0)
	buffer_write(buffer,buffer_u8,GAMERULE_INFO)
	buffer_write(buffer,buffer_u8,other.matches)
	buffer_write(buffer,buffer_u8,other.timegemcooldown)
	buffer_write(buffer,buffer_u8,other.blazingshouldup)
	buffer_write(buffer,buffer_u8,other.blazingspeed)
	buffer_write(buffer,buffer_u8,other.blazingspeedchain)
	buffer_write(buffer,buffer_u8,other.blazingcounter)
	network_send_packet(client_socket,buffer,buffer_tell(buffer))
	//buffer_delete(buffer)
}
}
//Level complete check


