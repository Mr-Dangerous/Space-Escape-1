var _alert = check_alert_range(alert_range)
if (_alert){
	state = enemy.alert;
	chasing = "false";
} else {
	state = enemy.idle;
	xspeed = 0;
	yspeed = 0;
	chasing = "false";
}
