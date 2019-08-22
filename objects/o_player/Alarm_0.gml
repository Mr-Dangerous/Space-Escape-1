///@description freezes end of attack animation
state = player.moving
var _weapon = instance_nearest(x, y, o_omni_blade)
instance_destroy(_weapon)
