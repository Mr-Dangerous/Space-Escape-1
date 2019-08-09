switch (selected_attack_mode){
	case "melee":
	state = enemy.melee
	break;
	case "ranged":
	state = enemy.ranged;
	break;
	default:
	state = enemy.idle;
	break;
}

