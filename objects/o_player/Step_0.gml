#region Fetch the map
_map_object = instance_find(o_map, 0);
_map = _map_object._map;
_terrain_map = _map_object._terrain_map;
#endregion

#region Set up Controls
up = keyboard_check(ord("W"));
right = keyboard_check(ord("D"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
space = keyboard_check(vk_space);
attack = keyboard_check_pressed(ord("E"));
attack_release = keyboard_check_released(ord("E"));
interact = keyboard_check_pressed(ord("Q"));



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
	move(o_border, o_difficult_terrain);
	
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
		
		if (place_meeting(x + (16 * image_xscale), y, o_interactable)){
			state = player.interacting;
		}
	//check to see if it can be tilled
		var i = floor((x + (20 * image_xscale)) / 16);
		var j = floor((y + 16)/ 16);
		var _tile = ds_grid_get(_map, i, j)
		var tile_farmable = false
		if (_tile = "grass" or
			_tile = "flower" or
			_tile = "tilled"){
			tile_farmable = true
			}
		if (tile_farmable){	
			switch (_tile){
				case "tilled":
				ds_grid_set(_map, i, j, "grass");
				break;
	
				case "grass":
				ds_grid_set(_map, i, j, "tilled");
				break;
				
				case "flower":
				ds_grid_set(_map, i, j, "tilled");
				break;
			}
		}
	}	
	break;
	
#endregion
#region Attacking
	case player.attacking:
	xspeed = 0;
	yspeed = 0;
	sprite_index = s_player_attack
	if (right or left){
		image_xscale = right - left
	}
	if (attack) {
		charge += 1
		if (charge > 10){
			charge = 10
		}
		if (charge > 1){
			repeat (charge){
				draw_charge(_player.x, _player.y);
			}
		}
		
	}
		
	if (attack_release){
		image_index = 1
		attack_count += 1
	}
	if (attack_count !=0){
		attack_count += 1
	}
	if (attack_count >= attack_duration){
		state = player.moving;
		attack_count = 0
		charge = 0
	}
	break;	
#endregion Interacting
//just for now
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
