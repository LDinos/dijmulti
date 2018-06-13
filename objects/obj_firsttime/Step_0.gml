if keyboard_check_pressed(vk_enter)
    {
        
            if field != ""
                {
					if image_index = 0
					{
						ini_open("settings.ini")
						global.user1 = ini_write_string("Users","user1",field)
						ini_close()
						image_index++
						field = ""
					}
					else
						{
							ini_open("settings.ini")
							global.user2 = ini_write_string("Users","user2",field)
							ini_close()
							room_restart()
						}
                }
            
    }

if keyboard_check_pressed(vk_backspace)
    {
    field = string_delete(field, string_length(field), 1);
    }
else if keyboard_check_pressed(vk_anykey)
    {
    if (keyboard_lastkey > 48 && keyboard_lastkey  < 91) || keyboard_lastchar = "0"
        {
            if string_length(field) <= 13 
                {
                    field = string(field) + string(keyboard_lastchar)   
                } 
        }
    }




