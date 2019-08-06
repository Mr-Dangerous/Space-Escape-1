// @param player x
// @param player y
//SCRIPT NEEDS WORK, DOES NOT FUNCTION

var _player_x = argument0
var _player_y = argument1
var _direction_seed = random_range(0, 24)
var _direction = _direction_seed * (360/24)

var _x = lengthdir_x(40, _direction)
var _y = lengthdir_y(40, _direction)

draw_line_width_colour(_player_x, _player_y, _x, _y, 2, c_white, c_white)
