
                if n = 8
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,1000)
					if (combo >= 1) style_add(1000)
                    with(gem_board1[i,j-1]) matchme = 0
                    with(gem_board1[i,j-2]) matchme = 0
                    with(gem_board1[i,j-3]) matchme = 0
                    with(gem_board1[i,j-4]) matchme = 0
                    with(gem_board1[i,j-5]) matchme = 3
                    with(gem_board1[i,j-6]) matchme = 0
                    with(gem_board1[i,j-7]) matchme = 0
                    with(gem_board1[i,j-8]) matchme = 0
                    }
                else if n = 7
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,300)
					if (combo >= 1) style_add(300)
                    with(gem_board1[i,j-1]) matchme = 0
                    with(gem_board1[i,j-2]) matchme = 0
                    with(gem_board1[i,j-3]) matchme = 0
                    with(gem_board1[i,j-4]) matchme = 3
                    with(gem_board1[i,j-5]) matchme = 0
                    with(gem_board1[i,j-6]) matchme = 0
                    with(gem_board1[i,j-7]) matchme = 0
                    }                   
                else if n = 6
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    with(gem_board1[i,j-1]) matchme = 0
                    with(gem_board1[i,j-2]) matchme = 0
                    with(gem_board1[i,j-3]) matchme = 0
                    with(gem_board1[i,j-4]) matchme = 3
                    with(gem_board1[i,j-5]) matchme = 0
                    with(gem_board1[i,j-6]) matchme = 0
                    }
                else if n = 5
                    {
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    with(gem_board1[i,j-1]) matchme = 0
                    with(gem_board1[i,j-2]) matchme = 0
                    with(gem_board1[i,j-3]) matchme = 2
                    with(gem_board1[i,j-4]) matchme = 0
                    with(gem_board1[i,j-5]) matchme = 0
                    } 
                else if n = 4
                    {
                    p1=1
                    p2=0
                    //audio_play_sound(gling,1,0)                    
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    //script_execute(check_powercenter,i,j-2)
                    with(gem_board1[i,j-1]) matchme = 0
                    with(gem_board1[i,j-2]) matchme = other.p1
                    with(gem_board1[i,j-3]) matchme = other.p2
                    with(gem_board1[i,j-4]) matchme = 0
                    }    
                else if n = 3                
                    {
                    //audio_play_sound(gling,1,0)
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    with(gem_board1[i,j-1]) matchme = 0
                    with(gem_board1[i,j-2]) matchme = 0
                    with(gem_board1[i,j-3]) matchme = 0
                    }                                     
                n = 1
