if array_length(global.plr_items) == 0 {
	no_items = true;
	item_color = #999999;
} else {
	no_items = false;
	item_color = #FF7F27;
}

if (global.battle_state == 0) {
	if menu_state = 0 {
		if (global.key_left_pressed) {
			button_select -= 1;
			if (button_select <= 0) {
				button_select = 4;
			}
			if (no_items and button_select == 3) {
				button_select -= 1;
			}
		}

		if (global.key_right_pressed) {
			button_select += 1;
			if (button_select >= 5) {
				button_select = 1;
			}
			if (no_items and button_select == 3) {
				button_select += 1;
			}
		}
	}

	fight_color = #FF7F27;
	act_color = #FF7F27;
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

if (global.key_confirm_pressed and menu_state == 0) {
	menu_state = 1;
	if fight_sel {fight_option_state = 1}
	if act_sel {act_option_state = 1}
	if item_sel {item_page = 1}
	if mercy_sel {} // todo: work on this thing
}

if (global.key_cancel_pressed and menu_state == 1) {
	menu_state = 0;
	if fight_sel {fight_option_state = 0}
	if act_sel {act_option_state = 0}
	if item_sel {item_page = 0}
	if mercy_sel {} // todo: work on this thing
}

if menu_state == 1 {
	if global.key_left_pressed {
		menu_option_select[0] -= 1;
		if menu_option_select[0] < 0 {menu_option_select[0] = max_menu_option_select[0]}
	}
	
	if global.key_right_pressed {
		menu_option_select[0] += 1;
		if menu_option_select[0] > max_menu_option_select[0] {menu_option_select[0] = 0}
	}
	
	if global.key_up_pressed {
		menu_option_select[1] -= 1;
		if menu_option_select[1] < 0 {menu_option_select[1] = max_menu_option_select[1]}
	}
	
	if global.key_down_pressed {
		menu_option_select[1] += 1;
		if menu_option_select[1] > max_menu_option_select[1] {menu_option_select[1] = 0}
	}
}