var one = keyboard_check_pressed(ord("1"))
var two = keyboard_check_pressed(ord("2"))
var three = keyboard_check_pressed(ord("3"))
var four = keyboard_check_pressed(ord("4"))

if (one){
	_scale = 1
	image_xscale = 1
	image_yscale = 1
}
if (two){
	_scale = 2
	image_xscale = 2
	image_yscale = 2
}
if (three){
	_scale = 3
	image_xscale = 3
	image_yscale = 3
}
if (four){
	_scale = 4
	image_xscale = 4
	image_yscale = 4
}



_x = _player.x
_y = _player.y
map_offset = _player.image_xscale * _scale


_map_x = floor((_x/_tile_width) + map_offset)
_map_y = floor(_y/_tile_width)

x = (_map_x * _tile_width)
y = (_map_y * _tile_width)

if (place_meeting(x, y, o_difficult_terrain)){
	sprite_index = s_building_outline_positive
} else {
	sprite_index = s_building_outline_negative
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






