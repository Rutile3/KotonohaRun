/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontScore);
draw_set_color(c_black);
draw_text(25 + 1, 25 + 2, string(global.nowScore));

draw_set_font(fontScore);
draw_set_color(c_white);
draw_text(25 - 1, 25 - 2, string(global.nowScore));
