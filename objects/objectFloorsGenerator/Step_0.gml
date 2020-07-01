/// @description Insert description here
// You can write your code in this editor


floorMoveCount += global.floorMoveSpeed;
if (floorMoveCount >= objectFloor01.sprite_width) {
	floorMoveCount -= objectFloor01.sprite_width;
	tmpX = room_width - floorMoveCount;
	tmpY = 384 + random_range(-2, 2) * objectFloor01.sprite_height;
	instance_create_layer(tmpX, tmpY, "InstancesFloor", objectFloor01);
}
