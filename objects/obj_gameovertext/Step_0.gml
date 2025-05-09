if !disappear {
    alpha += 0.02;
} else {
    alpha -= 0.02;
}

if alpha > 1 {alpha = 1}

if disappear and alpha <= 0 {
    disappear = false;
    alpha = -100;
    // dumb workaround but it kinda works!
    alarm[4] = 10;
}

if global.key_confirm_pressed {
    if obj_dialogman.check_if_finished() {
        if state = 1 {alarm[1] = 1}
        if state = 2 {alarm[2] = 1}
        if state = 3 {alarm[3] = 1}
    }
}

if global.key_cancel_pressed {
    obj_dialogman.skip();
}