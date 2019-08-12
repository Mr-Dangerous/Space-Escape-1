//add_tile_feature(feature_number, grid_id, starting_x, starting_y)
//@param feature:  an integer that will be the identifier for a larger assortment
//of different terrain features to be drawn on map.
//this function will probably get excessively large, since it needs to contain
//hand designed elements, although this may be better in a JSON format
//@param grid
//@param x:  starting x location for tile feature
//@param y:  starting y location for tile feature
var seed = argument0;
var grid = argument1;
var _x = argument2
var _y = argument3



switch (seed){
	#region 2x2 pool with surrounding flowers, seed = 0
	case 0:

		//A 4x4 block with a pool in the center
		
		var i = 1
		
		ds_grid_set(grid, _x, _y, "flower")
		i++
		ds_grid_set(grid, _x+i, _y, "flower")
		i++
		ds_grid_set(grid, _x+i, _y, "flower")
		i++
		ds_grid_set(grid, _x+i, _y, "flower")
		_y +=1
		i = 0
		
		
		ds_grid_set(grid, _x, _y, "flower")
		i++
		ds_grid_set(grid, _x+i, _y, "water")
		i++
		ds_grid_set(grid, _x+i, _y, "water")
		i++
		ds_grid_set(grid, _x+i, _y, "flower")
		_y +=1
		i = 0
		
		ds_grid_set(grid, _x, _y, "flower")
		i++
		ds_grid_set(grid, _x+i, _y, "water")
		i++
		ds_grid_set(grid, _x+i, _y, "water")
		i++
		ds_grid_set(grid, _x+i, _y, "flower")
		_y +=1
		i = 0
		
		ds_grid_set(grid, _x, _y, "flower")
		i++
		ds_grid_set(grid, _x+i, _y, "flower")
		i++
		ds_grid_set(grid, _x+i, _y, "flower")
		i++
		ds_grid_set(grid, _x+i, _y, "flower")
		_y +=1
		i = 0
	break;
	#endregion
}