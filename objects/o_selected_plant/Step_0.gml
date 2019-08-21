var _currently_selected_plant = _ui_object._currently_selected_plant
show_debug_message(_currently_selected_plant)
depth = 0
switch(_currently_selected_plant){
	case("bluecot"):
		var _plant = instance_create_depth(x, y+8, -1, o_bluecot)
		_plant.image_index = 5
	break;
}