draw_set_font(global.font_hachicro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(xx, yy+y, dmg, c_red, c_red, c_red, c_red, 1);

// literally every text object in the game will break if i don't do this first
draw_set_halign(fa_left);
draw_set_valign(fa_top);