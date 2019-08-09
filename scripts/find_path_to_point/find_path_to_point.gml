var _direction = floor(point_direction(x, y, target_x, target_y)/45)
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
	xspeed = xspeed * speed_multiplier
	yspeed = yspeed * speed_multiplier / 2
	face_player()
	//needs a function to zero in ont he target

