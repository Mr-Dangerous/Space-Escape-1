_map = _map_object._map
_map_height = ds_grid_height(_map)
_map_width = ds_grid_width(_map)
_tile_width = 16
_x = _player.x
_y = _player.y
image_speed = 1
_offset = _player.image_xscale 


_map_x = floor(_x/_tile_width)
_map_y = floor(_y/_tile_width)

x = (_map_x * 16) + (_offset * _tile_width)
y = (_map_y * 16)

var _map_element_list = ds_grid_get(_map, x/_tile_width, y/_tile_width)
var _map_element = ds_list_find_value(_map_element_list, 1)

show_debug_message(_map_element)

if (_map_element == "brambles"){
	sprite_index = s_building_outline_positive
} else {
	sprite_index = s_building_outline_negative
}






