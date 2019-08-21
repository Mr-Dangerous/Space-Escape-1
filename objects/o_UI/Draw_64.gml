var _current_room = room
switch (_current_room){
	#region Sandbox r_test_room_farm
	case (r_test_room_farm):
	var _gui_height = view_hport[0]
	var _gui_width = view_wport[0]


	draw_set_halign(fa_right);
	var _date_x = _gui_width - 16
	var _date_y = 16

	draw_text(_date_x - 16, _date_y, _date)
	draw_set_halign(fa_left)
	break;
	#endregion
	
	#region Genetic Engineering Lab
	case (r_genetic_engineering_lab):
	
	break;
	#endregion
	
}