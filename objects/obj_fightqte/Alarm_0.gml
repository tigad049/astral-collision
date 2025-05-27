var dmg = instance_create_depth(0, 0, 80, obj_fightqte_dmg);
dmg.xx = obj_star.x
dmg.yy = obj_star.y-50;
dmg.dmg = dmg_dealt;
obj_star.hp -= dmg_dealt;
alarm[1] = 60;