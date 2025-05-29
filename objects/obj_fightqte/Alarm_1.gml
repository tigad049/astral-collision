with obj_fightqte_bar {
    instance_destroy();
}
with obj_fightqte_strike {
    instance_destroy();
}
with obj_fightqte_dmg {
    instance_destroy();
}

if obj_star.hp <= 0 {
    obj_star.fade = true;
    obj_dialogman.dialog(52, 270, gettext("btl_youwon_nomercy"), global.font_dtm_mono);
    global.plr_lvl = 2;
    audio_stop_sound(mus_astralcollision);
    obj_game.alarm[2] = 30*6;
} else {
    obj_game.switch_battle_state(1);
    obj_star.image_index = 0;
    obj_battlemenu.fight_option_state = 0;
    obj_battlemenu.in_menus = true;
}

instance_destroy();