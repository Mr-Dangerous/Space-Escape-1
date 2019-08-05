//@param amount
var amount = argument0;

if (xspeed !=0) {
	if (sign(xspeed) = 1){
		xspeed -= amount;
	}
	if (sign(xspeed) = -1){
		xspeed += amount;
	} else {
		xspeed= 0;
	}
}
if (yspeed !=0) {
	if (sign(yspeed) = 1){
		yspeed -= amount;
	}
	if (sign(yspeed) = -1){
		yspeed += amount;
	} else {
		yspeed= 0;
	}
}
