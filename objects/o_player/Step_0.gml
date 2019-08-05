#region Set up Controls
up = keyboard_check(ord("W"));
right = keyboard_check(ord("D"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
space = keyboard_check(vk_space);
attack = keyboard_check_pressed(ord("E"));
interact = keyboard_check(ord("Q"));


#endregion

#region State Machine
switch (state){
#region Moving
	case player.moving:
	if (xspeed == 0 and yspeed == 0){
		sprite_index = s_player_idle;
	} else {
		sprite_index = s_player_walking;
	}
	if (up or down){
		yspeed -= (up - down)*acceleration;
	}
	
	if (right or left){
		xspeed += (right - left) * acceleration;
		image_xscale = sign(xspeed);
	}
	
	if (!up and !down){
		yspeed = 0;
	}
	if (!left and !right){
		xspeed = 0;
	}
	
	
	//commit to the move
	move(o_border);
	
	//processes after the move
	if (abs(yspeed) > max_y_speed){
		yspeed = sign(yspeed) * max_y_speed;
	}
	if (abs(xspeed) > max_x_speed){
		xspeed = sign (xspeed) * max_x_speed;
	}
	if (attack){
		state = player.attacking
	}
	//Interacting
	if (interact){
		//TODO needs to become o_interactable!
		if (place_meeting(x + (16 * image_xscale), y, o_beacon)){
			state = player.interacting;
		}
	}
		
	break;
	
#endregion
#region Attacking
	case player.attacking:
	xspeed = 0;
	yspeed = 0;
	sprite_index = s_player_attack
	attack_count += 1
	if (attack_count == attack_duration){
		attack_count = 0;
		state = player.moving;
	}
	break;	
#endregion Interacting
//just a test for now
	case player.interacting:
	xspeed = 0;
	yspeed = 0;
	sprite_index = s_player_idle
	if (space){
		state = player.moving
		}
	break;
		
#region 
#endregion
}

#endregion
