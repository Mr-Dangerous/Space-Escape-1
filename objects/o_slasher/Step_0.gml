//get the player
var _player = instance_find(o_player, 0);
var _alert = check_alert_range(alert_range)

switch (state){
#region Idle
case slasher.idle:
var _random = irandom_range(0, 1000)
var _random_2 = irandom_range (0, 1000)


	if (_random = 1){
		state = slasher.moving
		move_direction  = irandom_range(1, 4);
		
		alarm_set(0, irandom_range (20, 200));
	}
	if (_random_2 = 1 ){
		image_xscale = image_xscale * -1
	}
	if (_alert){
		state = slasher.alert;
		show_debug_message("Slasher.Idle triggered alert");
	}
#endregion
#region Moving
case slasher.moving:
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
		show_debug_message("Slasher.Moving");
		state = slasher.alert;
		xspeed = 0;
		yspeed= 0;
	}
	move(o_border);
	break;
#endregion	
case slasher.alert:

show_debug_message("Slasher.alert");
var _local_alert = check_alert_range(alert_range);
	if(_local_alert == false){
		if(chasing == "false"){
			alarm_set(1, 300);
			show_debug_message("Alarm set!");
			chasing = "true";
		}
	}
	find_path_to_player();
	move(o_border);
	var attack_mode_seed = irandom_range(1, 2)
	var attack_mode = "melee"
	if (attack_mode_seed = 2){
		attack_mode = "ranged"
	}
	var _attack_check = check_for_attack(attack_range)
	if (attack_mode = "melee" and _attack_check){
		state = slasher.melee
	}
	if (attack_mode = "ranged" and _attack_check){
		state = slasher.ranged
	}
	break;
#region Melee
case slasher.melee:
//replace with actual function
	find_path_to_player()
	xspeed = xspeed* 3
	yspeed = yspeed* 3
	move(o_border)
	break;
#endregion
#region Ranged
case slasher.ranged:
//replace with actual function
	find_path_to_player()
	xspeed = xspeed* 3
	yspeed = yspeed* 3
	move(o_border)
	break;
#endregion
}
