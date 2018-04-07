
                if n2 = 8
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,1000)
					if (combo >= 1) style_add(1000)
                    with(gem_board1[j-1,i]) script_execute(match_script,0)
                    with(gem_board1[j-2,i]) script_execute(match_script,0)
                    with(gem_board1[j-3,i]) script_execute(match_script,0)
                    with(gem_board1[j-4,i]) script_execute(match_script,0)
                    with(gem_board1[j-5,i]) script_execute(match_script,3)
                    with(gem_board1[j-6,i]) script_execute(match_script,0)
                    with(gem_board1[j-7,i]) script_execute(match_script,0)
                    with(gem_board1[j-8,i]) script_execute(match_script,0)
                    }                     
                else if n2 = 7
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,300)
					if (combo >= 1) style_add(300)
                    with(gem_board1[j-1,i]) script_execute(match_script,0)
                    with(gem_board1[j-2,i]) script_execute(match_script,0)
                    with(gem_board1[j-3,i]) script_execute(match_script,0)
                    with(gem_board1[j-4,i]) script_execute(match_script,3)
                    with(gem_board1[j-5,i]) script_execute(match_script,0)
                    with(gem_board1[j-6,i]) script_execute(match_script,0)
                    with(gem_board1[j-7,i]) script_execute(match_script,0)
                    }
                else if n2 = 6
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    with(gem_board1[j-1,i]) script_execute(match_script,0)
                    with(gem_board1[j-2,i]) script_execute(match_script,0)
                    with(gem_board1[j-3,i]) script_execute(match_script,0)
                    with(gem_board1[j-4,i]) script_execute(match_script,3)
                    with(gem_board1[j-5,i]) script_execute(match_script,0)
                    with(gem_board1[j-6,i]) script_execute(match_script,0)
                    }
                else if n2 = 5
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    with(gem_board1[j-1,i]) script_execute(match_script,0)
                    with(gem_board1[j-2,i]) script_execute(match_script,0)
                    with(gem_board1[j-3,i]) script_execute(match_script,2)
                    with(gem_board1[j-4,i]) script_execute(match_script,0)
                    with(gem_board1[j-5,i]) script_execute(match_script,0)
                    }
               else if n2 = 4
                    {
                    p1 = 1
                    p2 = 0
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    //script_execute(check_powercenter,j-2,i)
                    with(gem_board1[j-1,i]) script_execute(match_script,0)
                    with(gem_board1[j-2,i]) script_execute(match_script,other.p1)
                    with(gem_board1[j-3,i]) script_execute(match_script,other.p2)
                    with(gem_board1[j-4,i]) script_execute(match_script,0)
                    }                                                      
                else if n2 = 3                                
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    with(gem_board1[j-1,i]) script_execute(match_script,0)
                    with(gem_board1[j-2,i]) script_execute(match_script,0)
                    with(gem_board1[j-3,i]) script_execute(match_script,0)
                    }                        
                n2 = 1
