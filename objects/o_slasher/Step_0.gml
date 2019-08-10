//Slasher State Machine
var _alert = check_alert_range(alert_range)
var debug_message = ""

switch (state){
#region Idle
case enemy.idle:
debug_message = "Idle"
var _random = irandom_range(0, 1000)
var _random_2 = irandom_range (0, 400)

	if (_random = 1){
		state = enemy.moving
		//add in idle_sprite
		sprite_index = s_slasher_walking
		move_direction  = irandom_range(1, 4);
		
		alarm_set(0, irandom_range (20, 200));
	}
	if (_random_2 = 1 ){
		image_xscale = image_xscale * -1
	}
	if (_alert){
		sprite_index = s_slasher_walking;
		state = enemy.alert;
	}
	break;
#endregion

#region Moving
//This region defines the enemy wandering around 
//while waiting for the player
case enemy.moving:
debug_message = "moving"
		//alarm cancels the idle animation moving
	switch (move_direction){
			case 1: 
			xspeed = .5;
			break;
			case 2:
			xspeed = -.5;
			break;
			case 3:
			yspeed = -.25;
			break;
			case 4:
			yspeed = .25;
			break;	
		}
	if (_alert){
		state = enemy.alert;
		//assign s_sprite_moving
		sprite_index = s_slasher_walking
		xspeed = 0;
		yspeed = 0;
	}
	move(o_border);
	break;
	
#endregion	

#region Alert
case enemy.alert:
debug_message = "alert"

	disengage_player();
	find_path_to_player();
	move(o_border);
	//This section will have 4 attack modes.  
	//All of the code for determening
	//attack mode as well as the starting sprite will be here.
	var _attack_check = check_for_attack(attack_range)
	if (_attack_check){
		state = enemy.combat;
		select_attack_mode();
	}
	break;
#endregion

#region Combat
case enemy.combat:
debug_message = "combat"
	instance_create_layer(_player.x, _player.y, "Instances", o_player_location)
	xspeed = 0
	yspeed = 0
	//assign sprites by attack
	if (selected_attack_mode != "none"){
		switch(selected_attack_mode){
		case "melee":
		sprite_index = s_slasher_melee_attack;
		state = enemy.melee;
		break;
		case "ranged":
		sprite_index = s_slasher_ranged_attack
		break;
		}
	} else {
		state = enemy.idle;
	}
		
	break;
#endregion

#region Melee
case enemy.melee:
debug_message = "melee"
	find_path_to_point()
	
	xspeed = (xspeed);
	yspeed = (yspeed);
	
	//var _difference_x = abs(x - target_x)
	//var _difference_y = abs(y - target_y)
	
	//if (_difference_x < 4){
	//	x = target_x
	//}
	//if (_difference_y < 4){
	//	y = target_y
	//}
	if (place_meeting(x + image_xscale, y, o_player_location)){
		show_debug_message("true")
		image_speed = 2
		xspeed = 0
		yspeed = 0
		if (!alarm[1]){
			image_speed = 0
			alarm_set(1, resume_aggro + random_range(2, 10))
		}
	}
	move(o_border);
	break;
	
#endregion

#region Ranged
show_debug_message("ranged")
case enemy.ranged:
//replace with actual function
	find_path_to_player()
	xspeed = xspeed* 3
	yspeed = yspeed* 3
	move(o_border)
	break;
#endregion

#region Inert
case enemy.inert:
show_debug_message("Inert")
//This is for moments where the enemy should be doing nothing, such
//as after firing an attak.
if (!alarm[1]){
	alarm_set(1, resume_aggro)
}
break;
#endregion
}

show_debug_message(debug_message)
