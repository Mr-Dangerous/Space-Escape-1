//acquire target
target_x = _player
target_y = _player
alarm_set(3, random_range(2, 5));
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
var selected_attack_mode_seed = random_range(1, number_of_attack_modes)

var _attack_mode = ""
switch (selected_attack_mode_seed){
	case 1:
		_attack_mode = attack_mode_1
	break;
	case 2:
		_attack_mode = attack_mode_2
	break;
	case 3:
		_attack_mode = attack_mode_3
	break;
	case 4:
		_attack_mode = attack_mode_4
	break;
}
	
var _attack_check = check_for_attack(attack_range)

	if (_attack_mode = "melee" and _attack_check){
		state = enemy.melee
	}
	if (_attack_mode = "ranged" and _attack_check){
		state = enemy.ranged
	}