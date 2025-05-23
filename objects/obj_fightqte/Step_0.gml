if object_exists(obj_fightqte_bar) and not qte_done {
    if global.key_confirm_pressed {
        with obj_fightqte_bar {
            hspeed = 0;
            image_speed = 0.4;
            audio_play_sound(snd_laz, 0, false);
            var slice = instance_create_depth(obj_star.x, obj_star.y, 0, obj_fightqte_strike);
            with slice {
                image_speed = 0.25;
                image_xscale = 2;
                image_yscale = 2;
            }
        }
        alarm[0] = 30;
        qte_done = true;
    }
}