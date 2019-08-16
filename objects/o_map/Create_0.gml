#region Room creation.  Will create a room if none exsists.
//adding this in later!
//for now, using r_test_room_farm for the test room
randomize();//just making each map truly random for now.
room_goto(r_test_room_farm)
_room_width = room_width
_room_height = room_height
_map_width = _room_width/_tile_width
_map_height = _room_height/_tile_width
ds_grid_resize(_map, _map_width, _map_height)
#endregion

#region Assign background sprites
//add in land features first
for (var _xp = 0; _xp < _map_width; _xp++){
	for (var _yp = 0; _yp < _map_height; _yp++){
		var _list = ds_list_create()
		ds_list_clear(_list)
		var _tile = ds_grid_get(_map, _xp, _yp)
		var _tile_background_value = ds_list_find_value(_tile, 0)
		show_debug_message(_tile_background_value)
		var _seed = irandom (100)
		if (_seed == 100 and _tile_background_value == undefined){
			//_random_seed = irandom(100) or however many cases there are
			_random_seed = 0;
			add_tile_feature(_random_seed, _map, _xp, _yp)
		}
	}
}

//add in filler background next
for (var _xp = 0; _xp < _map_width; _xp++){
	for (var _yp = 0; _yp < _map_height; _yp++){
		_list = ds_list_create()
		_list = ds_grid_get(_map, _xp, _yp)
		_tile = ds_list_find_value(_list, 0)
		
		if (_tile == undefined){
			ds_list_set(_list, 0, "grass")
			ds_grid_set(_map, _xp, _yp, _list)
		}	
	}
}
//add in objects

for (var _xp = 0; _xp < _map_width; _xp++){
	for (var _yp = 0; _yp < _map_height; _yp++){
		var _list = ds_list_create()
		_list = ds_grid_get(_map, _xp, _yp)
		var _tile_background_value = ds_list_find_value(_list, 0)
		
		var _tile_spawnable = false
		switch (_tile_background_value){
			case "grass":
				_tile_spawnable = true
			break;
			case "flower":
				_tile_spawnable = true
			break;
		}
		var _seed = irandom (10)
		if (check_adjacent_squares_for_spawnables(_xp, _yp, _map, "brambles")){
			_seed = irandom (1)
			show_debug_message("script fired in object")
		}
		if (_seed == 1 and _tile_spawnable == true){
			//should add in a script to make it more likely that certain terrain features spawn closer to eachother
			ds_list_set(_list, 1, "brambles")
			ds_grid_set(_map, _xp, _yp, _list)
			instance_create_layer(_xp*_tile_width, _yp*_tile_width, "Instances", o_brambles)
		}
	}
}




#endregion

/*
//this object will render and draw the map of background tiles.
var _current_room = room

show_debug_message("create")
if (_current_room == r_test_room){
	//first you set the room dimensions and the associated grid
	_map_height = 40
	_map_width = 40
	ds_grid_resize(_map, _map_width, _map_height)
	ds_grid_resize(_terrain_map, _map_width, _map_height)
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
	ds_grid_resize(_map, _map_width, _map_height)
	ds_grid_resize(_terrain_map, _map_width, _map_height)
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

//place trees and other objects
//placeholder concept to place the tree
for (var _xp = 0; _xp < _map_width; _xp++){
	for (var _yp = 0; _yp < _map_height; _yp++){
		if (ds_grid_get(_map, _xp, _yp) != "water"){
			var _random = irandom(160)
			if (_random == 1 or _random == 2){
				var _tree = instance_create_layer(_xp * tile_width, _yp * tile_width, "Instances", o_broadleaf_tree)
				_tree.depth = -_yp
				ds_grid_set(_terrain_map, _xp, _yp, "broadleaf tree")
				instance_create_layer(_xp*tile_width, _yp*tile_width, "Instances", o_broadleaf_stump)
			}
			
			if (_random == 2 or _random == 3){
				var bramble = instance_create_layer(_xp * tile_width, _yp * tile_width, "Instances", o_brambles)
				ds_grid_set(_terrain_map, _xp, _yp, "brambles")
				show_debug_message("brambles created!")
				var check = ds_grid_get(_terrain_map, _xp, _yp)
				show_debug_message(check)
				show_debug_message(_xp)
				show_debug_message(_yp)
				if (_random = 3){
					bramble.image_xscale = -1
				}
			}
			if (_random == 5 or _random == 6){
				var _plant = instance_create_layer(_xp * tile_width, _yp * tile_width, "Instances", o_bramble_with_dead_tree)
				ds_grid_set(_terrain_map, _xp, _yp, "brambles with dead tree")
				if (_random == 6){
					_plant.image_xscale = -1
				}
			} else {
				ds_grid_set(_terrain_map, _xp, _yp, "none")
			}
		}
	}
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
*/

