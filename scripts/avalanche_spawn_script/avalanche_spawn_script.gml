/// @param Gamerule_index
/// @param Gem_index
/// @description makes possible moves for avalanche
/* Always have possible moves! */
/*

Use argument0.gemsfallen[i,j] or gemboard!
We will divide the cases from minimum gapss first. Of course the single gaps can work on 2+ gapss aswell, etc.

************ONE SPAWN***********************

	 |1|
--SINGLE gaps-- (dont forget the O's gapss aswell, ADN THEIR LIMITS!!)

	     X
0) O O Δ			
                           
         Χ                       
1) Ο Δ Ο                          
                                  
	   Χ
2) O Δ   O

     X
3) Ο   Δ O

   x
4)   O Δ Ο

   Χ
5)   Δ Ο Ο


	 |2|
--2 gapsS-- (dont forget the O's gapss aswell!)

       X
0) O O
   Δ Δ
   
     Χ
1) Ο   Ο
   Δ   Δ
  
   Χ
2)   Ο Ο
     Δ Δ


	 |3|
--3 gapsS-- (dont forget the O's gapss aswell!)

     Χ
0) Ο
   Ο
   Δ

   Χ
1)  Ο
    Ο
	Δ
	
	 |4|
-- MINUS 6 gapsS-- (dont forget the O's gapss aswell!)
   Χ          
0)   Δ Δ
   Δ Ο Ο

     Χ
1) Δ   Δ
   Ο Δ Ο

       Χ
3) Δ Δ 
   Ο Ο Δ
   
	 |5|
-- MINUS 5 gapsS-- (dont forget the O's gapss aswell!)

0) Χ		
     Δ       
   Δ Ο         
   Δ Ο         
               
1)   Χ
   Δ
   Ο Δ
   Ο Δ

   Χ
2)   Δ
   Ο Δ
   Δ Ο
  
     Χ
3) Δ
   Δ Ο
   Ο Δ

   Χ
4)   Ο
     Δ
   Δ Ο

     Χ
5) Ο
   Δ
   Ο Δ
   
   	 |6|
-- MINUS 4 gapsS-- (dont forget the O's gapss aswell!)

1) Χ   2) Χ
   
   Ο      Δ
   Δ      Ο
   Ο      Ο
 
***************************TWO SPAWNS**************************************

*/
//lol = argument1


for(t=0;t<=7;t++)
{
	gaps[t] = argument0.gaps[t]
}


//--------------------1--------------------\\
//0
if !havedone
{
	if j>=3 //have space to check back
	{
		g1 = argument0.gemboard[gaps[j]-1,j-2]
		g2 = argument0.gemboard[gaps[j]-1,j-3]
		if (g1 == g2) && (g2 != -1)
		{
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
	}
}

//1
if !havedone
{
	if j>=3 //have space to check back
	{
		g1 = argument0.gemboard[gaps[j]-1,j-1]
		g2 = argument0.gemboard[gaps[j]-1,j-3]
		if (g1 == g2) && (g2 != -1)
		{
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
	}
}

//2
if !havedone
{
	if j>=2 && j<=6 //have space to check back
	{
		g1 = argument0.gemboard[gaps[j]-1,j-2]
		g2 = argument0.gemboard[gaps[j]-1,j+1]
		if (g1 == g2) && (g2 != -1)
		{
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
	}
}

//3
if !havedone
{
	if j>=1 && j<=5 //have space to check back
	{
		g1 = argument0.gemboard[gaps[j]-1,j-1]
		g2 = argument0.gemboard[gaps[j]-1,j+2]
		if (g1 == g2) && (g2 != -1)
		{
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
	}
}

//4
if !havedone
{
	if j<=4 //have space to check back
	{
		g1 = argument0.gemboard[gaps[j]-1,j+1]
		g2 = argument0.gemboard[gaps[j]-1,j+3]
		if (g1 == g2) && (g2 != -1)
		{
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
	}
}

//5
if !havedone
{
	if j<=4 //have space to check back
	{
		g1 = argument0.gemboard[gaps[j]-1,j+2]
		g2 = argument0.gemboard[gaps[j]-1,j+3]
		if (g1 == g2) && (g2 != -1)
		{
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
	}
}
//--------------------2--------------------\\

//0
if !havedone && gaps[j] >= 2 && j>=2
{
	g1 = argument0.gemboard[gaps[j]-2,j-1]
	g2 = argument0.gemboard[gaps[j]-2,j-2]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//1
if !havedone && gaps[j] >= 2 && j>=1 && j<=6
{
	g1 = argument0.gemboard[gaps[j]-2,j-1]
	g2 = argument0.gemboard[gaps[j]-2,j+1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//2
if !havedone && gaps[j] >= 2 && j<=5
{
	g1 = argument0.gemboard[gaps[j]-2,j+1]
	g2 = argument0.gemboard[gaps[j]-2,j+2]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//--------------------3--------------------\\

//0
if !havedone && gaps[j] >= 3 && j>=1
{
	g1 = argument0.gemboard[gaps[j]-3,j-1]
	g2 = argument0.gemboard[gaps[j]-2,j-1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//1
if !havedone && gaps[j] >= 3 && j<=6
{
	g1 = argument0.gemboard[gaps[j]-3,j+1]
	g2 = argument0.gemboard[gaps[j]-2,j+1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//--------------------4--------------------\\

//0
if !havedone && gaps[j] <= 7 && j<=5
{
	g1 = argument0.gemboard[gaps[j],j+1]
	g2 = argument0.gemboard[gaps[j],j+2]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//1
if !havedone && gaps[j] <= 7 && j>=1 && j<=6
{
	g1 = argument0.gemboard[gaps[j],j-1]
	g2 = argument0.gemboard[gaps[j],j+1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//2
if !havedone && gaps[j] <= 7 && j>=2
{
	g1 = argument0.gemboard[gaps[j],j-1]
	g2 = argument0.gemboard[gaps[j],j-2]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//--------------------5--------------------\\

//0
if !havedone && gaps[j] <= 6 && j<=6
{
	g1 = argument0.gemboard[gaps[j],j+1]
	g2 = argument0.gemboard[gaps[j]+1,j+1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//1
if !havedone && gaps[j] <= 6 && j>=1
{
	g1 = argument0.gemboard[gaps[j],j-1]
	g2 = argument0.gemboard[gaps[j]+1,j-1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//2
if !havedone && gaps[j] <= 6 && j<=6
{
	g1 = argument0.gemboard[gaps[j],j]
	g2 = argument0.gemboard[gaps[j]+1,j+1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//3
if !havedone && gaps[j] <= 6 && j>=1
{
	g1 = argument0.gemboard[gaps[j],j]
	g2 = argument0.gemboard[gaps[j]+1,j-1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//4
if !havedone && gaps[j] <= 7 && gaps[j] >= 2 && j<=6
{
	g1 = argument0.gemboard[gaps[j]-2,j+1]
	g2 = argument0.gemboard[gaps[j],j+1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//5
if !havedone && gaps[j] <= 7 && gaps[j] >= 2 && j>=1
{
	g1 = argument0.gemboard[gaps[j]-2,j-1]
	g2 = argument0.gemboard[gaps[j],j-1]
	if (g1 == g2) && (g2 != -1)
		{	
			with(gems_created[i,0]) set_skin(other.g1)
			havedone = true
		}
}

//--------------------6--------------------\\


	//1
	if !havedone && gaps[j] <= 4
	{		
		g1 = argument0.gemboard[gaps[j],j]
		g2 = argument0.gemboard[gaps[j]+2,j]
		if (g1 == g2) && (g2 != -1)
			{	
				with(gems_created[i,0]) set_skin(other.g1)
				havedone = true
			}
	}
	
	//2
	if !havedone && gaps[j] <= 4
	{		
		g1 = argument0.gemboard[gaps[j]+1,j]
		g2 = argument0.gemboard[gaps[j]+2,j]
		if (g1 == g2) && (g2 != -1)
			{	
				with(gems_created[i,0]) set_skin(other.g1)
				havedone = true
			}
	}
	
if havedone argument0.future_summoves++