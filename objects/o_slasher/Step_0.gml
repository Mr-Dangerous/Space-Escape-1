//get the player
//var _player = layer_instance_get_instance(o_player)
//var _player_x = _player.x
//var _player_y = _player.y


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
	//if (distance_to_point(_player_x, _player_y) < alert_range){
//		state = slasher.alert
	//}
#endregion
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
	move(o_border)
case slasher.alert:{

}

break;
}
