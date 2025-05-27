if object_exists(obj_fightqte_bar) and not qte_done {
    if obj_fightqte_bar.x >= x+self.sprite_width/2 {
        failed = true;
        alarm[0] = 1;
        qte_done = true;
        dmg_dealt = 0;
    }
    
    if not qte_done {
        var factor = 1;
        if obj_fightqte_bar.x == x {
            factor = 3;
        } else if obj_fightqte_bar.x < x {
            factor *= obj_fightqte_bar.x/x;
        } else if obj_fightqte_bar.x > x {
            factor *= (obj_fightqte_bar.x/x)-((obj_fightqte_bar.x-x)*2)/x;
        }
        dmg_dealt = round(15*factor);
        show_debug_message(dmg_dealt);
    }
    
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

if failed {
    image_alpha -= 0.08;
    image_xscale -= 0.06;
    x += 15.8;
}