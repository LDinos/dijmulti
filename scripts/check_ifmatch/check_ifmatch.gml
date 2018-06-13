///Checks if the current gem will get match, and give combo++ for blazing


if argument0 == Gem_1 kek = Gamerule_1
else kek = Gamerule_2

var ix = find_gemfallen_posi(id,kek)
var jx = find_gemfallen_posj(id,kek)

var myflag = false

//x\\
if jx >= 1 && jx <=kek.board_xsize-2
{
	if kek.gemboard[ix,jx-1] == kek.gemboard[ix,jx+1] && kek.gemboard[ix,jx-1] == skinnum
	{
		myflag = true
		other.flag = true
	}
}

if jx >= 2
{
	if kek.gemboard[ix,jx-1] == kek.gemboard[ix,jx-2] && kek.gemboard[ix,jx-1] == skinnum
	{
		myflag = true
		other.flag = true
	}
}

if jx <= kek.board_xsize-3
{
	if kek.gemboard[ix,jx+1] == kek.gemboard[ix,jx+2] && kek.gemboard[ix,jx+1] == skinnum
	{
		myflag = true
		other.flag = true
	}
}

//y\\
if ix >= 1 && ix <= global.board_rows-2
{
	if kek.gemboard[ix-1,jx] == kek.gemboard[ix+1,jx] && kek.gemboard[ix-1,jx] == skinnum
	{
		myflag = true
		other.flag = true
	}
}

if ix >= 2
{
	if kek.gemboard[ix-1,jx] == kek.gemboard[ix-2,jx] && kek.gemboard[ix-1,jx] == skinnum
	{
		myflag = true
		other.flag = true
	}
}

if ix <= global.board_rows-3
{
	if kek.gemboard[ix+1,jx] == kek.gemboard[ix+2,jx] && kek.gemboard[ix+1,jx] == skinnum
	{
		myflag = true
		other.flag = true
	}
}

//myflag\\
if myflag = true
{
	if other.gemtoexplode1 = noone
	{
		other.gemtoexplode1 = id
	}
	else other.gemtoexplode2 = id
}
