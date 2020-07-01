/// @description Insert description here
// You can write your code in this editor

foodMoveCount += global.scrollSpeed;
if (foodMoveCount >= 0) {
	foodMoveCount -= sprite_width;
	
	if (foodSpanCount <= 0){
		foodX = room_width - foodMoveCount;
		foodY = objectFloorsGenerator.nextFloorY - irandom_range(1, 3) * sprite_height;
		switch (irandom(2)) {
			case 0:
				instance_create_layer(foodX, foodY, "InstancesFood", objectIce);	
				break;
			case 1:
				instance_create_layer(foodX, foodY, "InstancesFood", objectShrimp);	
				break;
			case 2:
				instance_create_layer(foodX, foodY, "InstancesFood", objectZunda);	
				break;
		}
		
		foodSpanCount = irandom(8);
	}
	else {
		foodSpanCount--;
	}
}