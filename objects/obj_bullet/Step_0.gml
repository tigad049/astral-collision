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
    obj_playersoul.get_hurt(dmg);
}