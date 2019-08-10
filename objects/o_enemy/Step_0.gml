//get the player
var _alert = check_alert_range(alert_range)

switch (state){
#region Idle
case enemy.idle:
var _random = irandom_range(0, 1000)
var _random_2 = irandom_range (0, 400)

	if (_random = 1){
		state = enemy.moving
		//add in idle_sprite
		move_direction  = irandom_range(1, 4);
		
		alarm_set(0, irandom_range (20, 200));
	}
	if (_random_2 = 1 ){
		image_xscale = image_xscale * -1
	}
	if (_alert){
		state = enemy.alert;
	}
	break;
#endregion

#region Moving
case enemy.moving:
		//alarm cancels the idle animation moving
	switch (move_direction){
			case 1: 
			xspeed = .5;
			break;
			case 2:
			xspeed = .5;
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
		xspeed = 0;
		yspeed = 0;
	}
	move(o_border);
	break;
#endregion	
#region Alert
case enemy.alert:

	disengage_player()
	find_path_to_player();
	move(o_border);
	var _attack_check = check_for_attack(attack_range)
	if (_attack_check){
		//Acquire target
		target_x = _player
		target_y = _player
		state = enemy.combat
		select_attack_mode()
	}
	
	break;
#endregion

#region Combat
case enemy.combat:

	xspeed = 0
	yspeed = 0
	//assign sprites by attack
	if (selected_attack_mode != "none"){
		switch(selected_attack_mode){
		case "melee":
		state = enemy.melee
		break;
		}
	}
	//creates a delay in the attack animation
	if (!alarm[3]){
		alarm_set(3, irandom_range(3, 5));
	}
		
	break;
#endregion

#region Melee
case enemy.melee:
	find_path_to_point()
	xspeed = xspeed * 3;
	yspeed = yspeed * 3;
	if (x + image_xscale == target_x and y == target_y){
		image_speed = 2
		if (!alarm[1] and image_number == 0){
			alarm_set(1, resume_aggro + random_range(2, 10))
		}
	}
	break;
	
#endregion

#region Ranged
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
//This is for moments where the enemy should be doing nothing, such
//as after firing an attak.
if (!alarm[1]){
	alarm_set(1, resume_aggro)
}
break;
#endregion
}
