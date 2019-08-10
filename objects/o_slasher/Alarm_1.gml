var _alert = check_alert_range(alert_range)
if (_alert){
	state = enemy.alert;
	sprite_index = s_slasher_walking;
	chasing = "false";
} else {
	state = enemy.idle;
	sprite_index = s_slasher_idle;
	xspeed = 0;
	yspeed = 0;
	chasing = "false";
}