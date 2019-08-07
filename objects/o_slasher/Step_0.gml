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
show_debug_message("_local_alert =");
show_debug_message(_local_alert)
show_debug_message("Chasing = ")
show_debug_message(chasing);
	if(_local_alert == false){
		if(chasing == "false"){
			alarm_set(1, 300);
			show_debug_message("Alarm set!");
			chasing = "true";
		}
	}
	//this section needs to be changed to a move towards the player function
	yspeed = -.1;
	
	move(o_border);
	
	
break;
}
