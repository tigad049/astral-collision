with obj_fightqte_bar {
    instance_destroy();
}
with obj_fightqte_strike {
    instance_destroy();
}
with obj_fightqte_dmg {
    instance_destroy();
}

obj_game.switch_battle_state(1);
obj_battlemenu.fight_option_state = 0;
obj_battlemenu.in_menus = true;
instance_destroy();