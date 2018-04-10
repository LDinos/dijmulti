///@param hor_ver
///@param gem1
///@param gem2
if argument0 = 1 //horizontal 1, vertical 2
{
	if find_gemboard_posj(argument1,id) = cursor_x2 //|| find_gemboard_posj(argument1,id) = cursor_x2
	    {
			//show_debug_message("(H) Yes the flame should happen to me!")
			center_gem = argument1
	        p1 = 1
	        p2 = 0
	    }
	else
	    {
			//show_debug_message("(H) No the flame won't happen to me!")
			center_gem = argument2
	        p1 = 0
	        p2 = 1
	    }
}
else
{
	if find_gemboard_posi(argument1,id) = cursor_y2 //|| find_gemboard_posi(argument1,id) = cursor_y2
	    {
			//show_debug_message("(V) Yes the flame should happen to me!")
			center_gem = argument1
	        p1 = 1
	        p2 = 0
	    }
	else
	    {
			//show_debug_message("(V) No the flame won't happen to me!")
			center_gem = argument2
	        p1 = 0
	        p2 = 1
	    }
}
