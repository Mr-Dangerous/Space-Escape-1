var _current_room = room
advance_date = keyboard_check_pressed(ord("Y"));
switch(_current_room){
	#region Sandbox r_test_room_farm
	case (r_test_room_farm):
	if (advance_date){
		_date += 1
		with (o_farmable){
			event_user(0)
		}
	}
	break;
	#endregion
	
	#region Gentic Engineering Lab
	case (r_genetic_engineering_lab):
	
	
	
	
	break;
	#endregion
}
	