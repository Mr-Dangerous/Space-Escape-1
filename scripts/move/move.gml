//param @collision_object
//param @difficult_terrain

var collision_object = argument0;
var difficult_terrain = argument1;

if (place_meeting(x + xspeed, y , collision_object)){
	xspeed = 0;
}
if (place_meeting(x, y + yspeed, collision_object)){
	yspeed = 0;
}
if (place_meeting(x + xspeed, y , difficult_terrain)){
	xspeed = xspeed * .75;
}
if (place_meeting(x, y + yspeed, difficult_terrain)){
	yspeed = yspeed *.75;
}

x += xspeed
y += yspeed
