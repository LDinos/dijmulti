/// @description Insert description here
// You can write your code in this editor
x = lerp(xx,xx2,power(percent,2))
y = lerp(yy,yy2,power(percent,2))
percent += 0.1
if percent <= 1 alarm[0] = 1
else
{
ammoving = false
percent = 0
}

