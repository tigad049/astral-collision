draw_set_font(global.font_dtm_mono);
draw_text(52, 270, "   * Check\n   * Check\n   * Check");
draw_text(global.scx-12, 270, "   * Talk\n   * Talk\n   * Talk");
// seems to be just x1+20 and y1+20 for dialogue boxes

draw_set_font(global.font_mnc);
//draw_text(30, 400, "FRISK   LV 1");
draw_text(30, 400, string_concat(global.plr_name, "   LV ", global.plr_lvl));
// {player name} + three spaces + LV {lvl}