/// @description Insert description here
// You can write your code in this editor

text = string(global.nowScore);
draw_set_font(fontGameText);
draw_set_color(c_black);
draw_text(25 + 1, 25 + 2, text);

draw_set_font(fontGameText);
draw_set_color(c_white);
draw_text(25 - 1, 25 - 2, text);
