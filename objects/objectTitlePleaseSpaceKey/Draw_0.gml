/// @description Insert description here
// You can write your code in this editor

text = "Please Space Key";
width  = (room_width / 2) - (string_width(text) / 2);
height = 300;
draw_set_font(fontTitle);
draw_set_color(c_black);
draw_text(width + 1, height + 2, text);

draw_set_color(c_white);
draw_text(width - 2, height - 2, text);
