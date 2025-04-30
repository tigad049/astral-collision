if image_alpha >= 1 {
    image_alpha = 1;
    speed = 5;
    hurt = true;
} else {
    image_alpha += 0.1;
    hurt = false;
}

if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_playersoul, true, false) and hurt == true) {
    with obj_playersoul {
        if hurt == false {
            hurt = true;
            alarm[0] = 90;
            show_debug_message("player is hurt")
        }
    }
}