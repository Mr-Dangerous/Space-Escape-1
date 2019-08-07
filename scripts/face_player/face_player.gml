var _player = instance_nearest(x, y, o_player)
if (_player.x > x -4){
	image_xscale = -1
}
if (_player.x < x +4){
	image_xscale = 1
}
