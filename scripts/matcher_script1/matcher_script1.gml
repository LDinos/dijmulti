///@param difference
var t = argument0
				if n >= 8
                    {                 
                    script_execute(points_add,1000)
					if (combo >= 1) style_add(1000)
					center_gem = gem_board1[i,j-5+t]
                    with(gem_board1[i,j-1+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-2+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-3+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-4+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-5+t]) matchme = 6
                    with(gem_board1[i,j-6+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-7+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-8+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
					center_gem = noone
                    }
                else if n = 7
                    {                  
                    script_execute(points_add,300)
					if (combo >= 1) style_add(300)
					center_gem = gem_board1[i,j-4+t]
                    with(gem_board1[i,j-1+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-2+t]) {matchme = 0; create_gem_disabler(other.center_gem) }  
                    with(gem_board1[i,j-3+t]) {matchme = 0; create_gem_disabler(other.center_gem) }  
                    with(gem_board1[i,j-4+t]) matchme = 5
                    with(gem_board1[i,j-5+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-6+t]) {matchme = 0; create_gem_disabler(other.center_gem) }  
                    with(gem_board1[i,j-7+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
					center_gem = noone
                    }                   
                else if n = 6
                    {                   
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
					center_gem = gem_board1[i,j-4+t]
                    with(gem_board1[i,j-1+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
                    with(gem_board1[i,j-2+t]) {matchme = 0; create_gem_disabler(other.center_gem) }  
                    with(gem_board1[i,j-3+t]) {matchme = 0; create_gem_disabler(other.center_gem) }  
                    with(gem_board1[i,j-4+t]) matchme = 4
                    with(gem_board1[i,j-5+t]) {matchme = 0; create_gem_disabler(other.center_gem) }  
                    with(gem_board1[i,j-6+t]) {matchme = 0; create_gem_disabler(other.center_gem) } 
					center_gem = noone
                    }
                else if n = 5
                    {                 
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
					center_gem = gem_board1[i,j-3+t]
                    with(gem_board1[i,j-1+t]) {matchme = 0; create_gem_disabler(other.center_gem) }
                    with(gem_board1[i,j-2+t]) {matchme = 0; create_gem_disabler(other.center_gem) }
                    with(gem_board1[i,j-3+t]) matchme = 3
                    with(gem_board1[i,j-4+t]) {matchme = 0; create_gem_disabler(other.center_gem) }
                    with(gem_board1[i,j-5+t]) {matchme = 0; create_gem_disabler(other.center_gem) }
					center_gem = noone
                    } 
                else if n = 4
                    {
                    p1=0
                    p2=1                 
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    script_execute(check_powercenter,1,gem_board1[i,j-2+t],gem_board1[i,j-3+t])
                    with(gem_board1[i,j-2+t]) {matchme = other.p1; create_gem_disabler(other.center_gem) }
                    with(gem_board1[i,j-3+t]) {matchme = other.p2; create_gem_disabler(other.center_gem) }
					with(gem_board1[i,j-1+t]) {matchme = 0; create_gem_disabler(other.center_gem) }
                    with(gem_board1[i,j-4+t]) {matchme = 0; create_gem_disabler(other.center_gem) }
					center_gem = noone
                    }    
                else if n = 3                
                    {
                    script_execute(points_add,100)
					if (combo >= 1) style_add(100)
                    with(gem_board1[i,j-1+t]) matchme = 0
                    with(gem_board1[i,j-2+t]) matchme = 0
                    with(gem_board1[i,j-3+t]) matchme = 0
                    }                                     
                n = 1