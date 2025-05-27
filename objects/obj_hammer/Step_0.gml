if y >= 370-32 {
    direction = 90;
    hurt = false;
}

if direction == 90 {
    speed -= 0.5;
    image_alpha -= 0.08;
}

if image_alpha == 0 {
    instance_destroy();
}