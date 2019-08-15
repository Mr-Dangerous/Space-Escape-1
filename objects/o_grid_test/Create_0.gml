ds_grid_resize(_test_map, 3, 3);
for (var i = 0; i < 3; i++){
	for (var j = 0; j < 3; j++){
		var _list = ds_list_create()
		ds_list_set(_list, 0, i)
		ds_list_set(_list, 1, j)
		ds_list_set(_list, 2, "none")
		ds_grid_set(_test_map, i, j, _list)
	}
}
