/// @description Insert description here
// You can write your code in this editor


floorMoveCount += global.floorMoveSpeed;
if (floorMoveCount >= 0) {
	floorMoveCount -= objectFloor01.sprite_width;
	
	if (floorSpan <= 0) {
		floorX = room_width - floorMoveCount;
		nowFlorrY = nextFloorY;
		instance_create_layer(floorX, nextFloorY, "InstancesFloor", objectFloor01);	
		
		if (floorCount <= 0) {
			nextFloorY += random_range(-2, 2) * sprite_width; // heightだと狂うのでわざとwidth
			nextFloorY = min(nextFloorY, maxFloorY);
			nextFloorY = max(nextFloorY, minFloorY);
			
			floorCount = random_range(2, 5);
			if (nowFlorrY == nextFloorY) {
				floorSpan = random_range(1, 2);	
			}
			else {
				floorSpan = random_range(0, 2);
			}
		}
		else {
			floorCount--;	
		}
	}
	else {
		floorSpan--;
	}
}
