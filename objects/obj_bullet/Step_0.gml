if image_alpha >= 1 {
    image_alpha = 1;
    speed = 5;
    hurt = true;
} else {
    image_alpha += 0.1;
    hurt = false;
}