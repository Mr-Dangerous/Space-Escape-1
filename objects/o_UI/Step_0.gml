var _current_room = room
advance_date = keyboard_check_pressed(ord("Y"));

switch(_current_room){
	#region Sandbox r_test_room_farm
	case (r_test_room_farm):
	if (advance_date){
		_date += 1
		with (o_farmable){
			event_user(0)
		}
	}
	break;
	#endregion
	
	#region Gentic Engineering Lab
	
	case (r_genetic_engineering_lab):
	//controls for the cursor.  Cursor will eb controlled from here for now.
	var left = keyboard_check_pressed(ord("A"))
	var right = keyboard_check_pressed(ord("D"))
	var up = keyboard_check_pressed(ord("W"))
	var down = keyboard_check_pressed(ord("S"))
	var interact = keyboard_check_pressed(ord("Q"))
	//this may end up somewhere else
	//create the nodes if not created
	switch(_currently_selected_plant){
		case "bluecot":
		//bluecot has 5 nodes
		
		if (_nodes_created == false){
			show_debug_message("firing!")
			var _offset = 0
			for (var i = 0; i < 5; i++){
				instance_create_depth(40 +_offset, 128, -1, o_circle_red_node)
				_offset += 68
			}
			_offset = 0
			for (var i = 0; i<5; i++){
				if (i == 0 or i == 2 or i==4){
					instance_create_depth(40 +_offset, 200, -1, o_square_red_node)
				}
				if (i == 1 or i ==3){
					instance_create_depth(40 + _offset, 200, -1, o_hexagon_red_node1)
				}
				_offset +=68
			}
			_nodes_created = true
		}
		#region move the cursor on the ds_grid
		if (left){
			_selected_grid_x -= 1
			if (_selected_grid_x < 0){
				_selected_grid_x = 0	
			}
		}
		if (right){
			_selected_grid_x += 1
			if (_selected_grid_x > 4){
				_selected_grid_x = 4
			}
		}
		if (down){
			_selected_grid_y += 1
			if (_selected_grid_y > 2){
				_selected_grid_y = 2
			}
		}
		if (up){
			_selected_grid_y -= 1
			if(_selected_grid_y < 0){
				_selected_grid_y = 0
			}
		}
		_selected_node = ds_grid_get(_lab_map, _selected_grid_x, _selected_grid_y)
		show_debug_message(_selected_node)
		switch (_selected_node){
			case "plant select":
				_cursor.x = 22;
				_cursor.y = 44;
				break;
			case "plant info":
				_cursor.x = 97
				_cursor.y = 63
				break;				
			case "node 1":
				_cursor.x = 40
				_cursor.y = 140
				break;
			case "node 2":
				_cursor.x = 108
				_cursor.y = 140
				break;
			case "node 3":
				_cursor.x = 176
				_cursor.y = 140
				break;
			case "node 4":
				_cursor.x = 244
				_cursor.y = 140
				break;
			case "node 5":
				_cursor.x = 312
				_cursor.y = 140
				break;
			case "node 6":
				_cursor.x = 40
				_cursor.y = 212
				break;
			case "node 7":
				_cursor.x = 108
				_cursor.y = 212
				break;
			case "node 8":
				_cursor.x = 176
				_cursor.y = 212
				break;
			case "node 9":
				_cursor.x = 244
				_cursor.y = 212
				break;
			case "node 10":
				_cursor.x = 312
				_cursor.y = 212
				break;
			
		}
		
			
		
		
		
		
	#endregion	
	break;
	}
	
	
	
	break;
	#endregion
}
	