
var one = keyboard_check_pressed(ord("1"))
var two = keyboard_check_pressed(ord("2"))
var three = keyboard_check_pressed(ord("3"))
var four = keyboard_check_pressed(ord("4"))
var zero = keyboard_check_pressed(ord("0"))
var build = keyboard_check_pressed(ord("R"))
var plant = keyboard_check_pressed(ord("T"))

image_alpha = 1
if (zero){
	_scale = 0
}

if (one){
	_scale = 1
	image_xscale = 1
	image_yscale = 1
	_y_offset = 0
}
if (two){
	_scale = 2
	image_xscale = 2
	image_yscale = 2
	_y_offset = 8 
}
if (three){
	_scale = 3
	image_xscale = 3
	image_yscale = 3
	_y_offset = 0
}
if (four){
	_scale = 4
	image_xscale = 4
	image_yscale = 4
	_y_offset = 8 
}

if (_scale = 0){
	image_alpha = 0
	exit;
}

_x_offset = ((_scale * 8)-8) * _player.image_xscale



_x = _player.x
_y = _player.y
map_offset = _player.image_xscale * _scale

_map_x = round((_x/_tile_width) + map_offset)
_map_y = round(_y/_tile_width)

x = (_map_x * _tile_width - _x_offset)
y = (_map_y * _tile_width - _y_offset)

if (place_meeting(x, y, o_difficult_terrain)){
	sprite_index = s_building_outline_positive
	#region destroy the difficult terrain
	if (build){
		var _instance_list = ds_list_create()
	switch(_scale){
		case 0:
		break;
		case 1:
			var _instance = instance_place(x, y, o_difficult_terrain)
			if (_instance != undefined){
						ds_list_add(_instance_list, _instance)
				}
		break;
		
		case 2:
		var _instance = instance_place(x, y, o_difficult_terrain);
		ds_list_add(_instance_list, _instance)
		if (_instance != undefined){
			ds_list_add(_instance_list, _instance)
			}
		break;
		
		case 3:

		var _instance = instance_place(x, y, o_difficult_terrain);
		ds_list_add(_instance_list, _instance)
		if (_instance != undefined){
			ds_list_add(_instance_list, _instance)
			}
		
	
		break;
		
		case 4:
		var _instance = instance_place(x, y, o_difficult_terrain);
		ds_list_add(_instance_list, _instance)
		if (_instance != undefined){
			ds_list_add(_instance_list, _instance)
			}
		break;
		
		}
		var _list_size = ds_list_size(_instance_list)
		show_debug_message(_list_size)
		
		for (var i = 0; i < _list_size; i++)
			var _instance = ds_list_find_value(_instance_list, i)
			instance_destroy(_instance)
		}	 
	#endregion
} else {
	sprite_index = s_building_outline_negative
}

if (plant){
	var _difficult_terrain = place_meeting(x, y, o_difficult_terrain)
	var _border = place_meeting(x, y, o_border)
	var _farmable = place_meeting(x, y, o_farmable)
	var _diff_message = string(string("difficult terrain = ") + string(_difficult_terrain))
	var _border_message = string(string("border = ") + string(_border))
	var _farmable_message = string(string("farmable = ") + string(_farmable))
	show_debug_message(_diff_message)
	show_debug_message(_border_message)
	show_debug_message(_farmable_message)
	
	if (!place_meeting(x, y, o_difficult_terrain) and (!place_meeting(x, y, o_border)) and (!place_meeting(x, y, o_farmable))){
		
		switch(_scale){
			case 0:
				
			break;
			case 1:
				instance_create_depth(x, y, -y +8, o_bluecot)
			break;
		
			case 2:
		
			break;
		
			case 3:

			break;
			
			case 4:
		
			break;
		}
	}
}

		
		
		

/*var _map_element_list = ds_list_create()
ds_list_clear(_map_element_list)
_map_element_list = ds_grid_get(_map, _map_x, _map_y)
var _map_element = ds_list_find_value(_map_element_list, 1)

show_debug_message(_map_element)

if (_map_element == "brambles"){
	sprite_index = s_building_outline_positive
} else {
	sprite_index = s_building_outline_negative
}*/






