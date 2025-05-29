draw_set_font(global.font_hachicro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if dmg > 0 {
    draw_text_color(xx, yy+y, dmg, c_red, c_red, c_red, c_red, 1);
    obj_star.image_index = 1;
} else {
    draw_text_color(xx, yy+y, "MISS", c_gray, c_gray, c_gray, c_gray, 1);
}

draw_rectangle_color(223, 128, 415, 140, c_gray, c_gray, c_gray, c_gray, false);
draw_rectangle_color(223, 128, 223+(192*(lerp(obj_star.hp, oldhp, i)/obj_star.max_hp)), 140, c_lime, c_lime, c_lime, c_lime, false);

// literally every text object in the game will break if i don't do this first
draw_set_halign(fa_left);
draw_set_valign(fa_top);