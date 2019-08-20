/*This script takes all of the available interactable object and randomly selects
one and returns it. It also searches the surrounding tiles for similar or symbiotic
objects and adjusts the map to have a higher rate.

It's not complete right now.


*/


var _case = irandom_range(1, 4)

switch(_case){
	case 1:
		return "brambles"
		break;
	case 2:
		return "brambles with dead tree"
		break;
	case 3:
		return "broadleaf stump"
		break;
	case 4:
		return "red rock"
		break;
}