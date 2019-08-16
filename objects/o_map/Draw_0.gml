
for (xp = 0; xp < _map_width; xp++){
	for (yp = 0; yp < _map_height; yp++){
		_tile_list = ds_grid_get(_map, xp, yp)
		_tile_background = ds_list_find_value(_tile_list, 0)
		switch (_tile_background){
			case "grass":
				draw_sprite(s_grass_tile_purple, 0, xp * _tile_width, yp * _tile_width)
			break;
			case "flower":
				draw_sprite(s_flower_tile_purple, 0, xp * _tile_width, yp * _tile_width)
			break;
			case "tilled":
				draw_sprite(s_land_tilled_purple, 0, xp * _tile_width, yp * _tile_width)
			break;
			case "water":
				draw_sprite(s_water, 0, xp * _tile_width, yp * _tile_width)
			break;
		}
	}
}

