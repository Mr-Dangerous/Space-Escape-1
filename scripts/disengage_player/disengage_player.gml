//needs to be checked
var alert = check_alert_range(alert_range);
	if(alert == false){
		if(chasing == "false"){
			alarm_set(1, 300);
			show_debug_message("Alarm set!");
			chasing = "true";
		}
	}