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
		show_debug_message("enemy.Moving");
		state = enemy.alert;
		//assign s_sprite_moving
		xspeed = 0;
		yspeed = 0;
	}
	move(o_border);
	break;
#endregion	
case enemy.alert:

show_debug_message("enemy.alert");
	disengage_player()
	find_path_to_player();
	move(o_border);
	var attack_mode_seed = 1//irandom_range(1, 2)
	var attack_mode = "melee"
	if (attack_mode_seed = 2){
		attack_mode = "ranged"
	}
	var _attack_check = check_for_attack(attack_range)
	if (attack_mode = "melee" and _attack_check){
		state = enemy.melee
		pre_combat_processes()
		//assign melee attack sprite here
	}
	if (attack_mode = "ranged" and _attack_check){
		state = enemy.ranged
		//assign ranged attack sprite here
	}
	break;

#region Melee
case enemy.melee:
//replace with actual function
	target_x =_player.x
	target_y = _player.y
	find_path_to_player()
	xspeed = xspeed* 4
	yspeed = yspeed* 4
	check_alert_range(alert_range)
	move(o_border)
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
}
