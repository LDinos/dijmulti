/// @description Insert description here
// You can write your code in this editor

	if global.bot2
	{
		if global.botdifficulty2 < 4
		{
			do
			{
			global.user2 = choose("LoonahMatcher22", "Delioux",
			"Tatsumaki","TheKaylaEnigma","CandyCrushExpert",
			"DiskReadError","Mahvel Master","GrandDad","RockyMaster05",
			"Fleenstones","MemePhox1129","BejeweledMaster05")
			}
			until global.user1 != global.user2
		}
		else
		{
			do
			{
			global.user2 = choose("NeoRubius",
			"EA_Bot","Rhynier","RedAura",
			"Lazaricus", "Altenrai", "Varmitan", "Avolecta",
			"Miragellex", "Cyamethie","DinoBot")
			}
			until global.user1 != global.user2
		}
		
		switch global.user2
		{
			case "Rhynier":
				Board_1.sprite_index = spr_board_rhynier
				break;
		}

	}
	text = global.user2

image_speed = 0
image_index = 1
length = string_length(text)