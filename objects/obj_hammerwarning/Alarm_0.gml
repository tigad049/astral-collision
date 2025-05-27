var hammer = instance_create_layer(x, y-128, "Instances", obj_hammer);
if flip {
    hammer.image_xscale = -1;
    hammer.x -= 32;
} else {
    hammer.x += 32;
}
instance_destroy();