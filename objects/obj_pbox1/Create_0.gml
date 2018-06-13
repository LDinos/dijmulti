/// @description Insert description here
// You can write your code in this editor

	if global.bot1
	{
		if global.botdifficulty1 < 4
		{
			do
			{
			global.user1 = choose("LoonahMatcher22", "Delioux",
			"Tatsumaki","TheKaylaEnigma","CandyCrushExpert",
			"DiskReadError","Mahvel Master","GrandDad","RockyMaster05",
			"Fleenstones","MemePhox1129","BejeweledMaster05", "Cerigogr")
			}
			until global.user1 != global.user2
		}
		else
		{
			do
			{
			global.user1 = choose("NeoRubius",
			"EA_Bot","RedAura","Rhynier",
			"Lazaricus", "Altenrai", "Varmitan", "Avolecta",
			"Miragellex", "Cyamethie","DinoBot")
			}
			until global.user1 != global.user2
		}
		
		switch global.user1
		{
			case "Rhynier":
				Board_1.sprite_index = spr_board_rhynier
				break;
		}

	}
	text = global.user1
	
image_speed = 0
length = string_length(text)