if y >= 370-32 {
    direction = 90;
    hurt = false;
    screenshake(1, 1, 0.1);
    audio_play_sound(snd_hammerhit, 0, false, 0.7);
}

if direction == 90 and image_alpha == 1 {
    var bullet_spawn = x-48;
    if image_xscale == -1 {
        bullet_spawn = x+48;
    }
    for (var i = 0; i < 4; i += 1) {
        var inst = instance_create_layer(bullet_spawn + random_range(-5, 5), y+32 + random_range(-5, 5), "Instances", obj_hammerdebris);
        with (inst) {
            image_xscale = 2;
            image_yscale = 2;
            gravity = 0.5;
            gravity_direction = 270;
            direction = random_range(75, 105);
            friction = 0.08;
            speed = 8;
        }
    }
}

if direction == 90 {
    speed -= 0.5;
    image_alpha -= 0.08;
}

if image_alpha <= 0 {
    instance_destroy();
}