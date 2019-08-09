
//select attack mode
var number_of_attack_modes = 4
if (attack_mode_2 == "none"){
	number_of_attack_modes = 1
}
if (attack_mode_3 == "none"){
	number_of_attack_modes = 2
}
if (attack_mode_4 == "none"){
	number_of_attack_modes = 3
}
//This variable can be tweaked later to allow for more or less common attacks
var selected_attack_mode_seed = 1//random_range(1, number_of_attack_modes)

switch (selected_attack_mode_seed){
	case 1:
		selected_attack_mode = attack_mode_1
	break;
	case 2:
		selected_attack_mode = attack_mode_2
	break;
	case 3:
		selected_attack_mode = attack_mode_3
	break;
	case 4:
		selected_attack_mode = attack_mode_4
	break;
}