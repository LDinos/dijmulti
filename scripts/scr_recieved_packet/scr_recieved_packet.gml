var buffer = argument0
buffer_seek(buffer,buffer_seek_start,0)
var msg = buffer_read(buffer,buffer_u8)
switch msg
{
	case MAKEPOWER:
		xxyyid = buffer_read(buffer,buffer_u8)
		idpower = buffer_read(buffer,buffer_u8)
		idtime = buffer_read(buffer,buffer_bool)
		idmulti = buffer_read(buffer,buffer_bool)
		with(CL_gem)
		{
			if myid == other.xxyyid
			{
				gempower = other.idpower
				amTimeGem = other.idtime
				amMulti = other.idmulti
				break;
			}
		}
		break;
		
	case LIGHTON:
		with(CL_gem) lightOn = true
		break;
			
	case LIGHTOFF:
		with(CL_gem) lightOn = false
		break;
				
	case REQUEST_XY:
		letssend = false
		xxyyid = buffer_read(buffer,buffer_u8)
		with(Gem_1)
		{
			if myid = other.xxyyid
			{
			other.letssend = true
			event_user(10)
			break;
			}
		}
		if !letssend with(Gem_2)
		{
			if myid = other.xxyyid
			{
			other.letssend = true
			event_user(10)
			break;
			}
		}
		break;
		
	case GEM_ACC:
		xxyyid = buffer_read(buffer,buffer_u8)
		acctouse = buffer_read(buffer,buffer_u8)
		with(CL_gem)
		{
			if other.xxyyid = myid
			{
				acc = other.acctouse
			}
		}
		break;
		
	case COLOR_MATCHUP:
		xxyyid = buffer_read(buffer,buffer_u8)
		skin = buffer_read(buffer,buffer_u8)
		with(CL_gem) 
		{
			if other.xxyyid = myid
			{
				image_index = other.skin
			}
		}
		break;
			
	case GEM_MATCHUP: //moving on match
			gem1 = buffer_read(buffer,buffer_u8)
			gem2 = buffer_read(buffer,buffer_u8)
			xx = buffer_read(buffer,buffer_u16)
			yy = buffer_read(buffer,buffer_u16)
			xx2 = buffer_read(buffer,buffer_u16)
			yy2 = buffer_read(buffer,buffer_u16)
			with(CL_gem)
			{
				if myid == other.gem1
					{	
						percent = 0
						xx = other.xx
						yy = other.yy
						xx2 = other.xx2
						yy2 = other.yy2
						create_collider(15)
						ammoving = true
						alarm[0] = 1
					}
				else if myid == other.gem2
					{
						percent = 0
						xx = other.xx2
						yy = other.yy2
						xx2 = other.xx
						yy2 = other.yy
						ammoving = true
						create_collider(15)
						alarm[0] = 1					
					}
			}		
			break;
		
		case GEM_DIE:
			xxyyid = buffer_read(buffer,buffer_u8)
			with(CL_gem)
			{
				if myid = other.xxyyid instance_destroy()
			}
			break;
}
if instance_exists(obj_client)
{
	switch msg
	{
		case GEM_CREATION:
			_i = buffer_read(buffer,buffer_s8)
			_j = buffer_read(buffer,buffer_s8)
			acc = buffer_read(buffer,buffer_s8)
			xxyyskin = buffer_read(buffer,buffer_u8)
			xxyyid = buffer_read(buffer,buffer_u8)
			xxyycolor = find_color(xxyyskin)
			xxyygem = instance_create_depth(Board_1.x + 64*_j,Board_1.y + 64*_i,-1,CL_gem)
			xxyygem.myid = xxyyid
			xxyygem.mycolor = xxyycolor
			xxyygem.image_index = xxyyskin
			xxyygem.acc = acc
			break;
		
		case SEND_XY:
			xxyyid = buffer_read(buffer,buffer_u8)
			_i = buffer_read(buffer,buffer_s8)
			_j = buffer_read(buffer,buffer_s8)
			with(CL_gem)
			{
				if myid = other.xxyyid
				{
					x = Board_1.x + other._j*64
					y = Board_1.y + other._i*64
				}
			}
			break;
		
		case IAMOVER:
			with(obj_lasthur2)
			{
				otherplayeralreadyover = true
			}
			break;
			
		case GAMEISOVER:
			with(obj_gemgameover2)
			{
				audio_play_sound(vo_gameover,0,0)
				create_text(spr_gameover,"stayer")
				alarm[1] = 240
			}
			break;
			
		case STARTGAME:
			Gamerule_2.controlallowed = true
			audio_play_sound(vo_go,0,0)		
			instance_create(640,552,timer)
			instance_create(640,1104,obj_glassbar)
			instance_create(x,y,obj_radio)
			//RADIO\\
			if timer.time <= 60 obj_radio.music = mus_1min
			else obj_radio.music = mus_3min
			obj_radio.loop = false
			//-----------\\
			instance_destroy(obj_standby)
			break;
			
		case PLAYER_POS:
			player1.xlim = buffer_read(buffer,buffer_u8)
			player1.ylim = buffer_read(buffer,buffer_u8)
			player1.xlimprevious = buffer_read(buffer,buffer_u8)
			player1.ylimprevious = buffer_read(buffer,buffer_u8)
			player1.x = Board_1.x + player1.xlim*64 - 32
			player1.y = Board_1.y + player1.ylim*64 - 32
		break;	
		
		case GAMERULE_INFO:
			//Gamerule_1.style = buffer_read(buffer,buffer_u8)
			Gamerule_1.matches = buffer_read(buffer,buffer_u8)
			Gamerule_1.timegemcooldown = buffer_read(buffer,buffer_u8)
			Gamerule_1.blazingshouldup = buffer_read(buffer,buffer_u8)
			Gamerule_1.blazingspeed = buffer_read(buffer,buffer_u8)
			Gamerule_1.blazingspeedchain = buffer_read(buffer,buffer_u8)
			Gamerule_1.blazingcounter = buffer_read(buffer,buffer_u8)
			with(Gamerule_1) blazing_check()
		break;		
		
		case INITIATE_SPAWN:
			instance_create(x,y,spawner2)
		break;
		
		case BOARD_LIGHTUP:
			audio_play_sound(vo_blazingspeed,0,0)
			audio_play_sound(snd_blazingspeed,0,0)
			with(Board_1) sprite_index = spr_board_blazing
			with(Gamerule_1) alarm[4] = 600
		break;
		
		case POINTS:
			Gamerule_1.points = buffer_read(buffer,buffer_u32)
		break;
		
		case STYLE:
			Gamerule_1.style = buffer_read(buffer,buffer_u32)
		break;
		
		case USERNAME:
			creat = instance_create_depth(128,560,0,obj_pbox_multi1)
			creat.text = buffer_read(buffer,buffer_string)
			creat.length = string_length(creat.text)
		break;
		
		case PING:
			ping = buffer_read(buffer,buffer_u16) //client variable
		break;
	}
	
}
else if instance_exists(obj_server)
{
	switch msg
	{
		
	case GEM_CREATION:
			_i = buffer_read(buffer,buffer_s8)
			_j = buffer_read(buffer,buffer_s8)
			acc = buffer_read(buffer,buffer_s8)
			xxyyskin = buffer_read(buffer,buffer_u8)
			xxyyid = buffer_read(buffer,buffer_u8)
			xxyycolor = find_color(xxyyskin)
			xxyygem = instance_create_depth(Board_2.x + 64*_j,Board_2.y + 64*_i,-1,CL_gem)
			xxyygem.myid = xxyyid
			xxyygem.mycolor = xxyycolor
			xxyygem.image_index = xxyyskin
			xxyygem.acc = acc
			break;
			
	case SEND_XY:
		xxyyid = buffer_read(buffer,buffer_u8)
		_i = buffer_read(buffer,buffer_s8)
		_j = buffer_read(buffer,buffer_s8)
		with(CL_gem)
		{
			if myid = other.xxyyid
			{
				x = Board_2.x + other._j*64
				y = Board_2.y + other._i*64
			}
		}
		break;
			
	case IAMOVER:
			with(obj_lasthur1)
			{
				otherplayeralreadyover = true
			}
			break;
			
	case GAMEISOVER:
		with(obj_gemgameover1)
		{
			audio_play_sound(vo_gameover,0,0)
			create_text(spr_gameover,"stayer")
			alarm[1] = 240
		}
		break;
			
	case PLAYER_POS:
			player2.xlim = buffer_read(buffer,buffer_u8)
			player2.ylim = buffer_read(buffer,buffer_u8)
			player2.xlimprevious = buffer_read(buffer,buffer_u8)
			player2.ylimprevious = buffer_read(buffer,buffer_u8)
			player2.x = Board_2.x + player2.xlim*64 - 32
			player2.y = Board_2.y + player2.ylim*64 - 32
		break;	

	case GAMERULE_INFO:
		//Gamerule_2.style = buffer_read(buffer,buffer_u8)
		Gamerule_2.matches = buffer_read(buffer,buffer_u8)
		Gamerule_2.timegemcooldown = buffer_read(buffer,buffer_u8)
		Gamerule_2.blazingshouldup = buffer_read(buffer,buffer_u8)
		Gamerule_2.blazingspeed = buffer_read(buffer,buffer_u8)
		Gamerule_2.blazingspeedchain = buffer_read(buffer,buffer_u8)
		Gamerule_2.blazingcounter = buffer_read(buffer,buffer_u8)
		with(Gamerule_2) blazing_check()
		break;
	case BOARD_LIGHTUP:
		audio_play_sound(vo_blazingspeed,0,0)
		audio_play_sound(snd_blazingspeed,0,0)
		with(Board_2) sprite_index = spr_board_blazing
		with(Gamerule_2) alarm[4] = 600
		break;
	case POINTS:
		Gamerule_2.points = buffer_read(buffer,buffer_u32)
		break;
	case STYLE:
		Gamerule_2.style = buffer_read(buffer,buffer_u32)
		break;
	case USERNAME:
		creat = instance_create_depth(1152,560,0,obj_pbox_multi2)
		creat.text = buffer_read(buffer,buffer_string)
		creat.length = string_length(creat.text)
		break;
	case ENDGAME:
		room_goto(rm_multi)
		break;
	case PING:
		pingcounter = 0 //server variable
		break;
	}
}
