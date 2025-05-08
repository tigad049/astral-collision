font_add_enable_aa(false);
global.font_dtm_mono = font_add("DTM-Mono.otf", 20, false, false, 32, 128);
global.font_dtm_sans = font_add("DTM-Sans.otf", 20, false, false, 32, 128);
global.font_mnc = font_add("MNC.ttf", 18, false, false, 32, 128);
global.font_8bw = font_add("8-BIT WONDER.ttf", 10, false, false, 32, 128);
global.font_8bw_big = font_add("8-BIT WONDER.ttf", 76, false, false, 32, 128);
global.sw = window_get_width();
global.sh = window_get_height();
global.scx = global.sw/2;
global.scy = global.sh/2;

// 0 = player's turn, 1 = enemy's turn
global.battle_state = 0;

global.hide_player_soul = false;

global.plr_name = "GASTER";
global.plr_hp = 20;
global.plr_hp_max = 20;
global.plr_lvl = 1;
global.plr_items = [7827, 7827];
global.plr_death_coords = [0, 0];
global.plr_dead = false;
global.about_to_be_enemy_turn = false;

audio_play_sound(mus_astralcollision, 0, true, 0.8);
//audio_play_sound(mus_gameover, 0, true, 1, 0, 0.925);

global.key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
global.key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
global.key_up = keyboard_check(vk_up) || keyboard_check(ord("W"))
global.key_down = keyboard_check(vk_down) || keyboard_check(ord("S"))
global.key_confirm = keyboard_check(vk_enter) || keyboard_check(ord("Z"))
global.key_cancel = keyboard_check(vk_shift) || keyboard_check(ord("X"))
global.key_menu = keyboard_check(vk_control) || keyboard_check(ord("C"))

global.key_left_pressed = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))
global.key_right_pressed = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
global.key_up_pressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
global.key_down_pressed = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
global.key_confirm_pressed = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))
global.key_cancel_pressed = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))
global.key_menu_pressed = keyboard_check_pressed(vk_control) || keyboard_check_pressed(ord("C"))

global.key_left_released = keyboard_check_released(vk_left) || keyboard_check_released(ord("A"))
global.key_right_released = keyboard_check_released(vk_right) || keyboard_check_released(ord("D"))
global.key_up_released = keyboard_check_released(vk_up) || keyboard_check_released(ord("W"))
global.key_down_released = keyboard_check_released(vk_down) || keyboard_check_released(ord("S"))
global.key_confirm_released = keyboard_check_released(vk_enter) || keyboard_check_released(ord("Z"))
global.key_cancel_released = keyboard_check_released(vk_shift) || keyboard_check_released(ord("X"))
global.key_menu_released = keyboard_check_released(vk_control) || keyboard_check_released(ord("C"))

function switch_battle_state(state) {
	if state == 1 {
		global.hide_player_soul = true;
		global.battle_state = state;
		obj_playersoul.reset_movement_state();
		obj_battlemenu.menu_state = -1;
		obj_battlemenu.block_input = 1;
		obj_battlebox.boxlerp(global.scx-(global.scx/4), 230, global.scx+(global.scx/4), 390, false);
	}
	
	if state == 0 {
		global.hide_player_soul = true;
		global.battle_state = state;
		global.about_to_be_enemy_turn = false;
		obj_battlebox.boxlerp(32, 250, 606, 389, true);
		obj_playersoul.speed = 0;
		obj_bulletman.clear_bullets();
	}
}

function finished_boxlerp() {
	global.hide_player_soul = false;
	obj_battlemenu.block_input = 0;
	if global.battle_state == 0 {
		obj_battlemenu.button_select = 1;
		obj_battlemenu.menu_state = 0;
	}
	if global.battle_state == 1 {
		obj_bulletman.alarm[0] = 1;
		alarm[0] = 30*10;
	}
	obj_battlebox.finished = true;
}