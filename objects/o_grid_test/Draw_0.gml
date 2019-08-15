_tile_width = 32

for (var i = 0; i < 3; i++){
	for (var j = 0; j < 3; j++){
		var _list = ds_grid_get(_test_map, i, j)
		var _number = ds_list_find_value(_list, 0)
		draw_text(i * _tile_width, j * _tile_width, _number)
	}
}