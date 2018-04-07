/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_backspace)
    {
    field = string_delete(field, string_length(field), 1);
	global.username = field
    }
else if keyboard_check_pressed(vk_anykey)
    {
    if keyboard_lastkey > 48 && keyboard_lastkey  < 91 
        {
        if string_length(field) <= 18
            {
                field = string(field) + string(keyboard_lastchar)   
				global.username = field
            } 
        }
    }
