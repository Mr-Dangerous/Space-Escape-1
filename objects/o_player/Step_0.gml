#region Fetch the map
_map_object = instance_find(o_map, 0);
_map = _map_object._map;
#endregion

#region Rendering
depth = -y
if (place_meeting(x, y, o_transparent)){
	o_transparent.image_alpha = .5
}
if (place_meeting(xprevious, yprevious, o_transparent) and !place_meeting(x, y, o_transparent)){
	o_transparent.image_alpha = 1
}
#endregion

#region Set up Controls
up = (keyboard_check(ord("W")) || (gamepad_axis_value(0, gp_axislv) < 0));
down = (keyboard_check(ord("S"))  || (gamepad_axis_value(0, gp_axislv) > 0));
right = (keyboard_check(ord("D"))|| (gamepad_axis_value(0, gp_axislh) > 0));
left = (keyboard_check(ord("A")) || (gamepad_axis_value(0, gp_axislh) < 0));
space = keyboard_check(vk_space)
var square = (keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(0, gp_face3))
//attack_release = keyboard_check_released(ord("E"));
cross = keyboard_check_pressed(ord("Q")) or gamepad_button_check_pressed(0, gp_face1)
//plant = keyboard_check_pressed(ord("T"));
triangle = gamepad_button_check_pressed(0, gp_face4)
circle = gamepad_button_check_pressed(0, gp_face2)
shoulder_r = gamepad_button_check_pressed(0, gp_shoulderr)
trigger_r =gamepad_button_check_pressed(0, gp_shoulderrb)
hat_r = gamepad_button_check_pressed(0, gp_stickr)
shoulder_l = gamepad_button_check_pressed(0, gp_shoulderl)
trigger_l = gamepad_button_check_pressed(0, gp_shoulderlb)
hat_l = gamepad_button_check_pressed(0, gp_stickl)
start = gamepad_button_check_pressed(0, gp_start)
select = gamepad_button_check_pressed(0, gp_select)
dpad_up = gamepad_button_check_pressed(0, gp_padu)
dpad_down = gamepad_button_check_pressed(0, gp_padd)
dpad_right = gamepad_button_check_pressed(0, gp_padr)
dpad_left = gamepad_button_check_pressed(0, gp_padl)
#endregion

#region State Machine
switch (state){
#region Moving
	case player.moving:

	if (xspeed == 0 and yspeed == 0){
		sprite_index = s_player_idle;
	} else {
		sprite_index = s_player_walking;
	}
	if (up or down){
		yspeed -= (up - down)*acceleration;
	}
	
	if (right or left){
		xspeed += (right - left) * acceleration;
		image_xscale = sign(xspeed);
	}
	
	if (!up and !down){
		yspeed = 0;
	}
	if (!left and !right){
		xspeed = 0;
	}
	
	
	//commit to the move
	move(o_border, o_difficult_terrain);
	
	//processes after the move
	if (abs(yspeed) > max_y_speed){
		yspeed = sign(yspeed) * max_y_speed;
	}
	if (abs(xspeed) > max_x_speed){
		xspeed = sign (xspeed) * max_x_speed;
	}
	/*
	if (square){
		state = player.start_melee_attack
		sprite_index = s_player_attack
		var _melee_weapon = instance_create_depth((x + (15*image_xscale)), y - 1, depth - 10, o_omni_blade)
		_melee_weapon.visible = true
		_melee_weapon.image_xscale = image_xscale
		image_speed = 0
	}
	*/
	break;
#endregion










#region Attacking - warning!  borked!
/*
	case player.attacking:
	xspeed = 0;
	yspeed = 0;
	image_index = image_index + 1
	//needs to become an equipped variable instead of o_omniblade
	var _melee_weapon = instance_nearest(x, y, o_omni_blade)
	_melee_weapon.x = x + (13 * image_xscale)
	_melee_weapon.y = y - 5
	image_angle = 270
	
	image_speed = 0
	//freezes animation, then sets the state to player moving
	if (!alarm_get(0)){
		alarm_set(0, 10)
	}
	break;	
	*/
#endregion Interacting
//just for now
	case player.interacting:
	xspeed = 0;
	yspeed = 0;
	sprite_index = s_player_idle
	if (space){
		state = player.moving
		}
	break;
		

}

#endregion
