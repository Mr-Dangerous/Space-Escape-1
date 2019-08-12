//this object will render and draw the map of background tiles.
var _current_room = room
var tile_width = 16
if (_current_room == r_test_room){
	//first you set the room dimensions and the associated grid
	_map_height = 40
	_map_width = 40
	_map = ds_grid_create(_map_width, _map_height)
	//populate the room with random tiles, but you shoudl use an ini or json
	for (var i = 0; i < _map_width; i++){
		for (var j = 0; j < _map_height; j++){
			random_number = irandom_range(0, 1)
			if (random_number =0){
				ds_grid_set(_map, i, j, "grass")
			}
			if (random_number =1){
				ds_grid_set(_map, i, j, "flower")
			}
		}
	}
}
if (_current_room == r_test_room_farm){
	_map_height = 40
	_map_width = 40
	_map = ds_grid_create(_map_width, _map_height)
	for (var i = 0; i < _map_width; i++){
		for (var j = 0; j < _map_height; j++){
			random_number = irandom_range(0, 1)
			if (random_number =0){
				ds_grid_set(_map, i, j, "grass")
			}
			if (random_number =1){
				ds_grid_set(_map, i, j, "flower")
			}
		}
	}
	add_tile_feature(0, _map, 4, 4)
}


//place impassable terrain
for (var _xp = 0; _xp < _map_width; _xp++){
	for (var _yp = 0; _yp < _map_height; _yp++){
		if (ds_grid_get(_map, _xp, _yp) = "water"){
			show_debug_message("made a border")
			instance_create_layer(_xp*tile_width, _yp*tile_width, "Instances", o_border)
		}
	}
}
	









