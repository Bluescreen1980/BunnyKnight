draw_set_font(Font1);
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_text(x,y-120, monster_direction+ " "+string(attack_cooldown_current));