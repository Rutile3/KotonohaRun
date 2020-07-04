/// @description Insert description here
// You can write your code in this editor

text = "Total Score : ";
text += string(global.nowScore);

draw_set_font(fontResultText);
draw_set_color(c_black);
draw_text(25 + 1, 100 + 2, text);

draw_set_font(fontResultText);
draw_set_color(c_white);
draw_text(25 - 1, 100 - 2, text);
