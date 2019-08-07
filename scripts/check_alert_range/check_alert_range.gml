//@param alert_range
//@param _player

var alert_range = argument0
var _player =  instance_nearest(x, y, o_player)

var _distance = abs(distance_to_object(o_player))

if (_distance <= alert_range){
	return true
} else {
	return false
}