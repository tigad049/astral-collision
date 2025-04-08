if (global.battle_state == 0) {
	if (global.key_left_pressed) {
		button_select -= 1;
		if (button_select <= 0) {
			button_select = 4;
		}
	}

	if (global.key_right_pressed) {
		button_select += 1;
		if (button_select >= 5) {
			button_select = 1;
		}
	}

	fight_color = #FF7F27;
	act_color = #FF7F27;
	item_color = #FF7F27;
	mercy_color = #FF7F27;

	fight_sel = 0;
	act_sel = 0;
	item_sel = 0;
	mercy_sel = 0;

	switch(button_select) {
		case 1:
			fight_color = #FFFF00;
			fight_sel = 1;
		break;
	
		case 2:
			act_color = #FFFF00;
			act_sel = 1;
		break;
	
		case 3:
			item_color = #FFFF00;
			item_sel = 1;
		break;
	
		case 4:
			mercy_color = #FFFF00;
			mercy_sel = 1;
		break;
	}
} else {
	button_select = 0;
}