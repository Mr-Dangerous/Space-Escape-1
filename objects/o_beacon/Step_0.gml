var player = instance_nearest(x, y, o_player)
var interactable = false

if (place_meeting(x +16, y, o_player) 
	or place_meeting(x -16, y, o_player)
	or place_meeting(x, y+16, o_player)
	or place_meeting(x , y -16, o_player)){
		image_alpha = 1
		interactable = true
	} else {
		image_alpha = .5
	}

	
	
	