var _alert = check_alert_range(alert_range)
if (_alert){
	state = slasher.alert;
	chasing = "false";
} else {
	state = slasher.idle;
	xspeed = 0;
	yspeed = 0;
	chasing = "false";
}
