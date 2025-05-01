if image_alpha >= 1 {
    image_alpha = 1;
    speed = 5;
    hurt = true;
} else {
    image_alpha += 0.1;
    hurt = false;
    direction = point_direction(x, y, obj_playersoul.x, obj_playersoul.y);
}

if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_playersoul, true, false) and hurt == true) {
    if obj_playersoul.hurt == false {
        obj_playersoul.hurt = true;
        obj_playersoul.alarm[0] = 90;
        show_debug_message("player is hurt");
        global.plr_hp -= dmg;
    }
}