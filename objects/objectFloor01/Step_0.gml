/// @description Insert description here
// You can write your code in this editor

x -= global.floorMoveSpeed;

// 左の画面外に到達すると消える
if (x < 0 - sprite_width) {
	instance_destroy();
}
