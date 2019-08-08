//param @collision_object

var collision_object = argument0;
add_bounce_to_move()
if (place_meeting(x + xspeed, y , collision_object)){
	xspeed = 0;
}
if (place_meeting(x, y + yspeed + y_bounce_speed, collision_object)){
	yspeed = 0;
}

x += xspeed
y += yspeed + y_bounce_speed