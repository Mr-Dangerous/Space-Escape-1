_map_height = 100
_map_width = 100
_testroom = ds_grid_create(_map_width, _map_height)

for (var i = 0; i < _map_width; i++){
	for (var j = 0; j < _map_height; j++){
		random_number = irandom_range(0, 1)
		if (random_number =0){
			ds_grid_set(_testroom, i, j, "grass")
		}
		if (random_number =1){
			ds_grid_set(_testroom, i, j, "flower")
		}
	}
}


