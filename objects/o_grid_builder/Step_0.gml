var _player = instance_find(o_player, 0)
var _map_object = instance_find(o_map, 0)
var _map = _map_object._map
_map_height = ds_grid_height(_map)
_map_width = ds_grid_width(_map)
_tile_width = 16
_x = _player.x
_y = _player.y
map_offset = _player.image_xscale 


_map_x = floor((_x/_tile_width) + map_offset)
_map_y = floor(_y/_tile_width)

x = (_map_x * _tile_width)
y = (_map_y * _tile_width)

var _map_element_list = ds_grid_get(_map, _map_x, _map_y)
var _map_element = ds_list_find_value(_map_element_list, 1)

show_debug_message(_map_element)

if (_map_element == "brambles"){
	sprite_index = s_building_outline_positive
} else {
	sprite_index = s_building_outline_negative
}






