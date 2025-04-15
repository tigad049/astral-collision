switch (soul_mode) {
	case 0:
		image_blend = c_red;
	break;
	
	case 1:
		image_blend = c_blue;
	break;
}

if global.hide_player_soul {image_alpha = 0} else {image_alpha = 1}