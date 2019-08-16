/*This script takes all of the available background tiles and randomly selects
one and returns it.  This way, the background can be one of many different backgrounds.
the tile is rendered in the draw event
*/

var _case = irandom_range(1, 2)

switch(_case){
	case 1:
		return "grass"
	break;
	case 2:
		return "flower"
	break;
}