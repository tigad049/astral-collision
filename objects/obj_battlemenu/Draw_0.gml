draw_set_font(global.font_mnc);
//draw_text(30, 400, "FRISK   LV 1");
draw_text(30, 400, string_concat(global.plr_name, "   LV ", global.plr_lvl));
// {player name} + three spaces + LV {lvl}

draw_set_font(global.font_8bw);
draw_text(244, 402, "h");
draw_text(244+14, 402, "p");

draw_rectangle_color(277, 400, 276+(global.plr_hp_max*1.25), 420, c_red, c_red, c_red, c_red, false);
draw_rectangle_color(277, 400, 276+(global.plr_hp*1.25), 420, c_yellow, c_yellow, c_yellow, c_yellow, false);

var hpdisplay = string_replace_all(string_format(global.plr_hp, 2, 0), " ", "0");
draw_set_font(global.font_mnc);
draw_text(291+(global.plr_hp_max*1.25), 400, string_concat(hpdisplay, " / ", global.plr_hp_max));

draw_sprite_ext(spr_btl_fight, fight_sel, 32, 431, 1, 1, 0, fight_color, 1);
draw_sprite_ext(spr_btl_act, act_sel, 185, 431, 1, 1, 0, act_color, 1);
draw_sprite_ext(spr_btl_item, item_sel, 345, 431, 1, 1, 0, item_color, 1);
draw_sprite_ext(spr_btl_mercy, mercy_sel, 500, 431, 1, 1, 0, mercy_color, 1);

draw_set_font(global.font_dtm_mono);
// seems to be just x1+20 and y1+20 for dialogue boxes

if (menu_state == 0) {
	//draw_text(52, 270, "* Star reluctantly inches forth!");
	obj_dialogman.set_text_noise(snd_txt2);
    if first_encounter {
        obj_dialogman.dialog(52, 270, gettext("btl_start"), global.font_dtm_mono);
    } else {
        obj_dialogman.dialog(52, 270, gettext(flavor), global.font_dtm_mono);
    }
    qte_spawned = false;
}

if in_menus {
    obj_dialogman.clear();
}

if fight_option_state > 0 {
    in_menus = true;
	if fight_option_state == 1 {
		set_max_options(0, 0);
		draw_text(52, 270, gettext("btl_ui_name"));
        // 101 x 17
        draw_rectangle_color(270, 283, 371, 299, c_red, c_red, c_red, c_red, false);
        draw_rectangle_color(270, 283, 270+(101*(obj_star.hp/obj_star.max_hp)), 299, c_lime, c_lime, c_lime, c_lime, false);
	} else if fight_option_state == 2 {
        global.about_to_be_enemy_turn = true;
        global.hide_player_soul = true;
        if qte_spawned == false {
            instance_create_depth(global.scx, global.scy+80, 200, obj_fightqte);
            qte_spawned = true;
        }
    }
}

if act_option_state > 0 {
	if act_option_state == 1 {
        in_menus = true;
		set_max_options(0, 0);
		draw_text(52, 270, gettext("btl_ui_name"));
	} else if act_option_state == 2 {
		set_max_options(1, 1);
		draw_text(52, 270, string_concat(gettext("btl_ui_check"), "\n", gettext("btl_ui_reason")));
		draw_text(global.scx-12, 270, string_concat(gettext("btl_ui_talk"), "\n", gettext("btl_ui_pet")));
	} else if act_option_state == 3 {
        in_menus = false;
        block_input = 1;
		global.hide_player_soul = true;
        if menu_option_select[0] == 0 and menu_option_select[1] == 0 {
            // obj_dialogman.dialog(52, 270, "* STAR CHASE\n* This dog doesn't look like\n  she's from here...", global.font_dtm_mono);
            obj_dialogman.dialog(52, 270, gettext("btl_check"), global.font_dtm_mono);
        }
        
        if menu_option_select[0] == 1 and menu_option_select[1] == 0 {
            if global.progress == 0 {
                obj_dialogman.dialog(52, 270, gettext("btl_talk_1"), global.font_dtm_mono);
            } else {
                obj_dialogman.dialog(52, 270, gettext(talkask), global.font_dtm_mono);
            }
        }
        
        if menu_option_select[0] == 0 and menu_option_select[1] == 1 {
            if global.progress == 0 {
                obj_dialogman.dialog(52, 270, gettext("btl_reason_1"), global.font_dtm_mono);
            } else {
                obj_dialogman.dialog(52, 270, gettext("btl_reason_2"), global.font_dtm_mono);
            }
        }
        
        if menu_option_select[0] == 1 and menu_option_select[1] == 1 {
            if global.progress == 2 {
                obj_dialogman.dialog(52, 270, gettext("btl_pet_2"), global.font_dtm_mono);
            } else {
                obj_dialogman.dialog(52, 270, gettext("btl_pet_1"), global.font_dtm_mono);
            }
        }
 		button_select = 0;
	} else if act_option_state >= 4 {
        if menu_option_select[0] == 0 and menu_option_select[1] == 1 and global.progress == 0 {
            global.progress = 1;
        }
		obj_game.switch_battle_state(1);
		act_option_state = 0;
        in_menus = true;
	}
}

if item_page > 0 {
    in_menus = true;
	var number_of_items = array_length(global.plr_items);
	if item_page == 1 {
		set_max_options(clamp(number_of_items, 0, 1), clamp(floor(number_of_items/2), 0, 1));
		draw_text(52, 270, string_concat("   * ", get_item_info(global.plr_items[0], 0)));
        draw_text(52, 270, string_concat("   * ", get_item_info(global.plr_items[2], 0)));
		draw_text(global.scx-12, 270, string_concat("   * ", get_item_info(global.plr_items[1], 0)));
        draw_text(52, 270, string_concat("   * ", get_item_info(global.plr_items[3], 0)));
	}
}

if mercy_option_state > 0 {
    in_menus = true;
	if mercy_option_state == 1 {
		set_max_options(0, 0);
		draw_text(52, 270, gettext("btl_ui_spare"));
	}
}
