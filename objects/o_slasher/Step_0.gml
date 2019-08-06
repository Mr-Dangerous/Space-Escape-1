//get the player
var _player = layer_instance_get_instance(o_player)

switch (state){
#region Idle
case slasher.idle:
	if (random_range(0, 100) = 0){
		state = slasher.moving
	}
	//TODO
	var enemy_nearby = check_alert_range(alert_range, _player)
#endregion
}
