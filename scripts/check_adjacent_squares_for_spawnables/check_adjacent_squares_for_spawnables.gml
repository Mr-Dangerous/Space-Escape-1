///@param x
///@param y
///@param ds_grid_id
///@spawnable

var _x = argument0
var _y = argument1
var _map = argument2
var _spawnable = argument3

//this section of code will return false if the object is the type of object that
//does not spawn extras around it, such as rocks.
if (_spawnable =="red rock"){
	return false
} 
		


if (_x < 2 or _x +2 > _map_width or _y < 2 or _y+2 > _map_height){
	return false
}

for (var i = -1; i < 2; i++){
	for (var j = -1; j < 2; j++){
		_list = ds_grid_get(_map, _x + i, _y + j)
		_object = ds_list_find_value(_list, 1)
		var _object_string = get_spawnable_string(_object)
		if (_object_string == _spawnable){
			return true
			exit;
		}
	}
}
return false


