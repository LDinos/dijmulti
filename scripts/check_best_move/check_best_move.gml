/// @param Gamerule_index

//Let's make the moves, cyclops
for(i=0;i<=argument0.summoves2-1;i++) 
{
	best_move[i] = 0 //the variable that will show which (and how much) gemtousue position is best to use
	best_I[i] = 0
}

var best = 0
whattoshow = best_move[0] //debug

with(argument0)
{
	debug_i = summoves2
	if summoves2 > 0
	{
		for(i=0;i<=summoves2-1;i++)
		{
			debug_show[i] = -1
		}
	}
}

for(i = 0; i <= argument0.summoves2-1; i++)
{
	//first lets copy paste our board array
	for(k=0;k<=global.board_rows-1;k++)
	{
		for(t=0;t<=7;t++)
		{
			array_copypaste[k,t] = argument0.gemboard[k,t]
			array_copypaste_gems[k,t] = argument0.gem_board1[k,t]
		}
	}
	
	//then let's take the important variable for each summove foundation
	var i_ = argument0.i_gemtouse[i]
	var j_ = argument0.j_gemtouse[i]
	var dir_ = argument0.dir_gemtouse[i]
	var color_to_check = array_copypaste[i_,j_]
	//Initiate user match simulation
	switch dir_
	{
		//I,J: Displays the position of our gem AFTER its being moved to the direction we wanted. 
		case "up":
			var I = i_-1
			var J = j_
			temp = array_copypaste[i_-1,j_]
			temp2 = array_copypaste_gems[i_-1,j_]
			//
			array_copypaste[i_-1,j_] = array_copypaste[i_,j_]
			array_copypaste_gems[i_-1,j_] = array_copypaste_gems[i_,j_]
			//
			array_copypaste[i_,j_] = temp
			array_copypaste_gems[i_,j_] = temp2
			break;
		case "down":
			var I = i_+1
			var J = j_
			temp = array_copypaste[i_+1,j_]
			temp2 = array_copypaste_gems[i_+1,j_]
			//
			array_copypaste[i_+1,j_] = array_copypaste[i_,j_]
			array_copypaste_gems[i_+1,j_] = array_copypaste_gems[i_,j_]
			//
			array_copypaste[i_,j_] = temp
			array_copypaste_gems[i_,j_] = temp2
			break;
		case "right":
			var I = i_
			var J = j_+1
			temp = array_copypaste[i_,j_+1]
			temp2 = array_copypaste_gems[i_,j_+1]
			//
			array_copypaste[i_,j_+1] = array_copypaste[i_,j_]
			array_copypaste_gems[i_,j_+1] = array_copypaste_gems[i_,j_]
			//
			array_copypaste[i_,j_] = temp
			array_copypaste_gems[i_,j_] = temp2
			break;
		case "left":
			var I = i_
			var J = j_-1
			temp = array_copypaste[i_,j_-1]
			temp2 = array_copypaste_gems[i_,j_-1]
			//
			array_copypaste[i_,j_-1] = array_copypaste[i_,j_]
			array_copypaste_gems[i_,j_-1] = array_copypaste_gems[i_,j_]
			//
			array_copypaste[i_,j_] = temp
			array_copypaste_gems[i_,j_] = temp2
			break;
	}
	
	//Initiate matches and cascades
	best_I[i] = I //put I value to check how far down in the board i am (if needed)
	J_temp1 = J //lets not change our J's and I's
	J_temp2 = J
	I_temp1 = I
	I_temp2 = I
	
	var col_row_power = 0 //if colrowcheck happens to be 3>, this will be added best_move, IF the gem happens to be powered
	var col_row_check = 1 //have to make sure this becomes 3> for every row/collumn section in order to add it on bestmove.
//-------col row for I first--------//
	if instance_exists(array_copypaste_gems[I,J]) //MYSELF
	{
		if (array_copypaste_gems[I,J].gempower > 0) col_row_power += 9 //prioritize it a lot
		col_row_power += array_copypaste_gems[I,J].TimeGem //also prioritize it if its timegem
		if (array_copypaste_gems[I,J].amMulti) col_row_power += 10
		if (array_copypaste_gems[I,J].amSpecial > 0) col_row_power += 10 //and multi
	}
	
	while I_temp1 > 0
	{
		if array_copypaste[I_temp1-1,J] = color_to_check //ANYTHING FROM ABOVE
		{
			col_row_check++
			if instance_exists(array_copypaste_gems[I_temp1-1,J])
			{
				if (array_copypaste_gems[I_temp1-1,J].gempower > 0) col_row_power += 9 //prioritize it a lot
				col_row_power += array_copypaste_gems[I_temp1-1,J].TimeGem //also prioritize it if its timegem
				if (array_copypaste_gems[I_temp1-1,J].amMulti) col_row_power += 10
				if (array_copypaste_gems[I_temp1-1,J].amSpecial > 0) col_row_power += 10 //and multi
			}
			I_temp1--
		}
		else break;
	}
	//best_move[i]++
	
	while I_temp2 < global.board_rows-1
	{
		if array_copypaste[I_temp2+1,J] = color_to_check //ANYTHING FROM BELOW
		{
			col_row_check++
			if instance_exists(array_copypaste_gems[I_temp2+1,J])
			{
				if (array_copypaste_gems[I_temp2+1,J].gempower > 0) col_row_power += 9 //prioritize it a lot
				col_row_power += array_copypaste_gems[I_temp2+1,J].TimeGem //also prioritize it if its timegem
				if (array_copypaste_gems[I_temp2+1,J].amMulti) col_row_power += 10
				if (array_copypaste_gems[I_temp2+1,J].amSpecial > 0) col_row_power += 10 //and multi
			}
			I_temp2++
		}
		else break;
	}
	if col_row_check >= 3 best_move[i] += col_row_check + col_row_power //2 plus the one we have right now = 3
	//we dont care about colrowcheck if it is less than 3 because it doesn't represent a match.
//
//-------col row for J now------------//
	col_row_check = 1
	col_row_power = 0
	
	if instance_exists(array_copypaste_gems[I,J]) //MYSELF
	{
		if (array_copypaste_gems[I,J].gempower > 0) col_row_power += 9 //prioritize it a lot
		col_row_power += array_copypaste_gems[I,J].TimeGem //also prioritize it if its timegem
		if (array_copypaste_gems[I,J].amMulti) col_row_power += 10
		if (array_copypaste_gems[I,J].amSpecial > 0) col_row_power += 10 //and multi
	}
	
	while J_temp1 > 0
	{
		if array_copypaste[I,J_temp1-1] = color_to_check //ANYTHING FROM MY LEFT
		{
			col_row_check++
			if instance_exists(array_copypaste_gems[I,J_temp1-1])
			{
				if (array_copypaste_gems[I,J_temp1-1].gempower > 0) col_row_power += 9 //prioritize it a lot
				col_row_power += array_copypaste_gems[I,J_temp1-1].TimeGem //also prioritize it if its timegem
				if (array_copypaste_gems[I,J_temp1-1].amMulti) col_row_power += 10
				if (array_copypaste_gems[I,J_temp1-1].amSpecial > 0) col_row_power += 10 //and multi
			}
			J_temp1--
		}
		else break;
	}
	
	while J_temp2 < 7
	{
		if array_copypaste[I,J_temp2+1] = color_to_check //ANYTHING FROM MY RIGHT
		{
			col_row_check++
			if instance_exists(array_copypaste_gems[I,J_temp2+1])
			{
				if (array_copypaste_gems[I,J_temp2+1].gempower > 0) col_row_power += 9 //prioritize it a lot
				col_row_power += array_copypaste_gems[I,J_temp2+1].TimeGem //also prioritize it if its timegem
				if (array_copypaste_gems[I,J_temp2+1].amMulti) col_row_power += 10 //and multi
				if (array_copypaste_gems[I,J_temp2+1].amSpecial > 0) col_row_power += 10 //and multi
			}
			J_temp2++
		}
		else break;
	}
	if col_row_check >= 3 best_move[i] += col_row_check + col_row_power
//
	with(argument0)
	{
		if summoves2 > 0
		{
				debug_show[other.i] = other.best_move[other.i]
		}
	}
	
	//And last, lets return the best one
	if i > 0
	{
		if best_move[i] > best_move[best] //if it is bigger (example: I am a 4gem match, much better than the 3gem one.)
		{
			best = i
			whattoshow = best_move[i] //debug
		}
		else if (best_move[i] = best_move[best]) && (room = rm_avalanche)//if they are the same (example: both of them are 3 gem matches)
		{
			if best_I[i] > best_I[best] //find which one is in the lowest height (so cascades will be more possible)
			{
				best = i
				whattoshow = best_move[i] //debug
			}
		}
	
	}
}

return best;