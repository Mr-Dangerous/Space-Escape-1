//param @collision_object

var collision_object = argument0;

if (place_meeting(x + xspeed, y , collision_object)){
	xspeed = 0;
}
if (place_meeting(x, y + yspeed, collision_object)){
	yspeed = 0;
}

x += xspeed
y += yspeed
