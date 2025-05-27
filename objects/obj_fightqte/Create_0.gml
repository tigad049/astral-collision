var bar = instance_create_depth(x-self.sprite_width/2, y, 100, obj_fightqte_bar);
with bar {
    image_speed = 0;
    hspeed = 15;
}

should_draw_number = false;
qte_done = false;
dmg_dealt = 0;
failed = false;