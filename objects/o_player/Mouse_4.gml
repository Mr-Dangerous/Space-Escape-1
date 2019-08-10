var map = instance_find(o_map, 0)

var i = x / 16;
var j = y / 16;
var _tile = ds_grid_get(map._testroom, i, j) 
switch (_tile){
	case "tilled":
	ds_grid_set(map._testroom, i, j, "grass")
	break;
	
	case "grass":
	ds_grid_set(map._testroom, i, j, "tilled")
	break;
}
