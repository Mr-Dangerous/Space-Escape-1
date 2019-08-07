//@param attack_range

var attack_range = argument0
var _player =  instance_nearest(x, y, o_player)

var _distance = abs(distance_to_object(_player))

if (_distance <= attack_range){
	return true
} else {
	return false
}