audio_play_sound(snd_break2, 1000, false);
for (var i = 0; i < 7; i += 1)
{
    var inst = instance_create_layer(x + random_range(-5, 5), y + random_range(-5, 5), "Instances", obj_heartpiece)
    with (inst) {
        gravity = 0.3;
        gravity_direction = 270;
        direction = random(360);
        friction = .1;
        speed = 6;
    }
}
image_alpha = 0;
alarm[2] = 50;