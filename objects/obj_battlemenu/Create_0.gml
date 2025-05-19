button_select = 1;
// 0 = none
// 1 = fight
// 2 = act
// 3 = item
// 4 = mercy

// this is really jank
fight_color = #FF7F27;
act_color = #FF7F27;
item_color = #FF7F27;
mercy_color = #FF7F27;

fight_sel = 0;
act_sel = 0;
item_sel = 0;
mercy_sel = 0;

no_items = false;

// 0 = selecting the 4 buttons
// 1 = selected a button, going through the menus
menu_state = 0;

// 1 = selecting target
// 2 = qte
fight_option_state = 0;

// 1 = selecting target
// 2 = act menu options
act_option_state = 0;

// 4 items on every page, 12 in total?
// starts at 1, goes through 3
item_page = 0;

// variable to see if user selected mercy or not
mercy_option_state = 0;

block_input = 0;
in_menus = false;

// x,y coords for selecting buttons when in a menu
menu_option_select = [0, 0];
max_menu_option_select = [1, 2];

qte_spawned = false;
force_redraw = false;

function set_max_options(_x, _y) {
	max_menu_option_select = [_x, _y];
	check_oob();
}

function check_oob() {
	if menu_option_select[0] < 0 {menu_option_select[0] = max_menu_option_select[0]}
	if menu_option_select[0] > max_menu_option_select[0] {menu_option_select[0] = 0}
	if menu_option_select[1] < 0 {menu_option_select[1] = max_menu_option_select[1]}
	if menu_option_select[1] > max_menu_option_select[1] {menu_option_select[1] = 0}
	obj_playersoul.update_ui_pos();
}

function get_item_info(_id, infotype) {
	return global.items[_id][infotype]
}

function advance_menu_option() {
    if (fight_option_state >= 1) {fight_option_state++;}
	if (act_option_state >= 1) {act_option_state++; if act_option_state >= 3 {global.about_to_be_enemy_turn = true}}
	if item_sel {item_page++;}
	if (mercy_option_state >= 1) {mercy_option_state++;}
}