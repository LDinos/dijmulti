if !file_exists(argument0) 
	{
		ini_open(argument0)
/*COINS*/	ini_write_real("Coins","value",0)
/*BOARDS*/	ini_write_real("Boards","0",1) //default unlocked
			for(i=1;i<50;i++)
			{
				ini_write_real("Boards",string(i),0) //locked
				ini_write_real("Boards",string(i)+"_price",i*100 + (i-1)*50)
			}
/*IND/ORS*/	ini_write_real("Indicators","0",1) //default unlocked
			for(i=1;i<50;i++)
			{
				ini_write_real("Indicators",string(i),0) //locked
				ini_write_real("Indicators",string(i)+"_price",i*25 + (i-1)*(25*i))
			}
/*PBOXES*/	ini_write_real("Pboxes","0",1) //default unlocked
			for(i=1;i<50;i++)
			{
				ini_write_real("Pboxes",string(i),0) //locked
				ini_write_real("Pboxes",string(i)+"_price",i*40 + (i-1)*40)
			}
		ini_close()
	}