
var _map_height = ds_grid_height(_map_object._map)
var _map_width = ds_grid_width(_map_object._map)

ds_grid_resize(_map, _map_height, _map_width);
ds_grid_resize(_terrain_map, _map_height, _map_width);

_map = _map_object._map
_terrain_map = _map_object._terrain_map

for (i=0; i < 3; i++){
	for (j=0; j <3; j++){
		_terrain_element = ds_grid_get(_terrain_map, i, j)
		if(_terrain_element == "brambles"){
			var _difficult_terrain = instance_place(x + i*16*image_xscale, y + j*16, o_difficult_terrain)
			instance_destroy(_difficult_terrain)
			ds_grid_set(_terrain_map, i, j, "none")
		}
	}
}





