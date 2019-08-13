_map_copy = _map_object._map

var _map_height = ds_grid_height(_map_copy)
var _map_width = ds_grid_width(_map_copy)

ds_grid_resize(_map, _map_height, _map_width);
ds_grid_resize(_terrain_map, _map_height, _map_width);





