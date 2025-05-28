if (hurt == true) {
    if obj_playersoul.hurt == false {
        obj_playersoul.hurt = true;
        obj_playersoul.alarm[0] = 90;
        global.plr_hp -= dmg;
    }
}