/// @description Insert description here
// You can write your code in this editor

x += moveSpeed;

// 画面外に出ている場合は画面内に戻す
x = min(x, room_width - (sprite_width / 2));
