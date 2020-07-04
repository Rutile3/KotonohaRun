/// @description Insert description here
// You can write your code in this editor

text = "Kotonoha Run";
width  = (room_width / 2) - (string_width(text) / 2);
height = 150;
draw_set_font(fontTitle);
draw_set_color(c_black);
draw_text(width + 2, height + 3, text);

draw_set_color(c_white);
draw_text(width - 2, height - 3, text);
