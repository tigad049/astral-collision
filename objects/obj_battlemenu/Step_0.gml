if array_length(global.plr_items) == 0 {
	no_items = true;
	item_color = #999999;
} else {
	no_items = false;
	item_color = #FF7F27;
}

if (global.battle_state == 0 and block_input == 0) {
	if menu_state = 0 {
		if (global.key_left_pressed) {
			audio_play_sound(snd_movemenu, 0, false, 0.5);
			button_select -= 1;
			if (button_select <= 0) {
				button_select = 4;
			}
			if (no_items and button_select == 3) {
				button_select -= 1;
			}
		}

		if (global.key_right_pressed) {
			audio_play_sound(snd_movemenu, 0, false, 0.5);
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

if (global.key_cancel_pressed and menu_state == 1) {
	if fight_sel {fight_option_state -= 1}
	if act_sel {act_option_state -= 1}
	if item_sel {item_page = 0}
	if mercy_sel {mercy_option_state -= 1} // todo: work on this thing
	if fight_option_state == 0 and act_option_state == 0 and item_page == 0 and mercy_option_state == 0 {menu_state = 0}
}

if (global.key_confirm_pressed and menu_state == 1) {
	if not global.about_to_be_enemy_turn {
		audio_play_sound(snd_select, 0, false, 0.5);
	}
	//if fight_sel {fight_option_state = 2}
	act_option_state++;
	
	if act_option_state >= 3 {global.about_to_be_enemy_turn = true}
}

if (global.key_confirm_pressed and menu_state == 0) {
	audio_play_sound(snd_select, 0, false, 0.5);
	menu_state = 1;
	if fight_sel {fight_option_state = 1}
	if act_sel {act_option_state = 1}
	if item_sel {item_page = 1}
	if mercy_sel {mercy_option_state = 1}
}

if menu_state == 1 {
	if global.key_left_pressed {
		if max_menu_option_select[0] != 0 {
			audio_play_sound(snd_movemenu, 0, false, 0.5);
			menu_option_select[0] -= 1;
		}
	}
	
	if global.key_right_pressed {
		if max_menu_option_select[0] != 0 {
			audio_play_sound(snd_movemenu, 0, false, 0.5);
			menu_option_select[0] += 1;
		}
	}
	
	if global.key_up_pressed {
		if max_menu_option_select[1] != 0 {
			audio_play_sound(snd_movemenu, 0, false, 0.5);
			menu_option_select[1] -= 1;
		}
	}
	
	if global.key_down_pressed {
		if max_menu_option_select[1] != 0 {
			audio_play_sound(snd_movemenu, 0, false, 0.5);
			menu_option_select[1] += 1;
		}
	}
}