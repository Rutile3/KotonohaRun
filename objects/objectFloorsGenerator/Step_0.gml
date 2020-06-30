/// @description Insert description here
// You can write your code in this editor


FloorMoveCount += global.floorMoveSpeed;
if (FloorMoveCount >= objectFloor01.sprite_width) {
	FloorMoveCount -= objectFloor01.sprite_width;
	tmpX = room_width - FloorMoveCount;
	tmpY = 384 + random_range(-2, 2) * objectFloor01.sprite_height;
	instance_create_layer(tmpX, tmpY, "InstancesFloor", objectFloor01);
}
