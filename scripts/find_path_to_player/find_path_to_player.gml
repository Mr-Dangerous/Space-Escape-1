var _player = instance_nearest(x, y, o_player)
var _direction = floor(point_direction(x, y, _player.x, _player.y)/45)
show_debug_message(_direction)
switch (_direction){
	case (0):
		xspeed =  .75;
		yspeed = -.75;
		break;
	case (1):
		xspeed = 0
		yspeed = -1;
		break;
	case (2):
		yspeed = -.75
		xspeed = -.75
		break;
	case (3):
		xspeed = -1;
		yspeed = 0;
		break;
	case (4):
		xspeed = -.75;
		yspeed = .75;
		break;
	case (5):
		xspeed = 0;
		yspeed = 1;
		break;
	case (6):
		xspeed = .75;
		yspeed = .75;
		break;
	case (7):
		xspeed = 1;
		yspeed = 0;
		break;
}
face_player()