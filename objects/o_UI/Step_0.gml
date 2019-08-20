advance_date = keyboard_check_pressed(ord("Y"));

if (advance_date){
	_date += 1
	with (o_farmable){
		event_user(0)
	}
}