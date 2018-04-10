///@param difference
var t = argument0
				if n2 >= 8
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,1000)
					if (combo >= 1) style_add(1000)
					center_gem = gem_board1[j-5+t,i]
                    //script_execute(create_score_text,1000,gem_board1[j-2,i].x,gem_board1[j-2,i].y,gem_board1[j-2,i].mycolor)
                    with(gem_board1[j-1+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-2+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-3+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-4+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-5+t,i]) script_execute(match_script,6)
                    with(gem_board1[j-6+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-7+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-8+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
					center_gem = noone
                    }                     
                else if n2 = 7
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,300)
					if (combo >= 1) style_add(300)
					center_gem = gem_board1[j-4+t,i]
                    //script_execute(create_score_text,300,gem_board1[j-3,i].x,gem_board1[j-3,i].y,gem_board1[j-3,i].mycolor)
                    with(gem_board1[j-1+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-2+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-3+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-4+t,i]) script_execute(match_script,5)
                    with(gem_board1[j-5+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-6+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-7+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
					center_gem = noone
                    }
                else if n2 = 6
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
					center_gem = gem_board1[j-4+t,i]
                    //script_execute(create_score_text,100,gem_board1[j-3,i].x,gem_board1[j-3,i].y,gem_board1[j-3,i].mycolor)
                    with(gem_board1[j-1+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-2+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-3+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-4+t,i]) script_execute(match_script,4)
                    with(gem_board1[j-5+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-6+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
					center_gem = noone
                    }
                else if n2 = 5
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
					center_gem = gem_board1[j-3+t,i]
                    //script_execute(create_score_text,100,gem_board1[j-2,i].x,gem_board1[j-2,i].y,gem_board1[j-2,i].mycolor)
                    with(gem_board1[j-1+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-2+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-3+t,i]) script_execute(match_script,3)
                    with(gem_board1[j-4+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-5+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
					center_gem = noone
                    }
               else if n2 = 4
                    {
                    p1 = 1
                    p2 = 0
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    script_execute(check_powercenter,2,gem_board1[j-2+t,i],gem_board1[j-3+t,i])
                    //script_execute(create_score_text,100,gem_board1[j-1,i].x,gem_board1[j-1,i].y,gem_board1[j-1,i].mycolor)                    
                    with(gem_board1[j-2+t,i]) {script_execute(match_script,other.p1); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-3+t,i]) {script_execute(match_script,other.p2); create_gem_disabler(other.center_gem) }
					with(gem_board1[j-1+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
                    with(gem_board1[j-4+t,i]) {script_execute(match_script,0); create_gem_disabler(other.center_gem) }
					center_gem = noone
                    }                                                      
                else if n2 = 3                                
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    //script_execute(create_score_text,100,gem_board1[j-2,i].x,gem_board1[j-2,i].y,gem_board1[j-2,i].mycolor)
                    with(gem_board1[j-1+t,i]) script_execute(match_script,0)
                    with(gem_board1[j-2+t,i]) script_execute(match_script,0)
                    with(gem_board1[j-3+t,i]) script_execute(match_script,0)
					if center_gem != noone
						{
							with(gem_board1[j-2+t,i]) {create_gem_disabler(other.center_gem) }
							with(gem_board1[j-3+t,i]) {create_gem_disabler(other.center_gem) }
							with(gem_board1[j-1+t,i]) {create_gem_disabler(other.center_gem) }
						}
                    }                        
                n2 = 1