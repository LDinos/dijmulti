/// @description Insert description here
// You can write your code in this editor

//device
c = gamepad_get_device_count();
available_devices[0,0] = -1
available_devices[0,1] = "Keyboard arrows and space"
available_devices[1,0] = -2
available_devices[1,1] = "Keyboard WASD and LShift"

//0 = arrows space
//1 = wasd shift
//2? whatever it finds
//3? whatever it finds
//4...etc
count = 2
for(i=0;i<=c;i++)
{
	if gamepad_is_connected(i)
	{
		available_devices[count,0] = i
		available_devices[count,1] = gamepad_get_description(i)
		count++
	}
}


control = 4
image_index = 4