/// @description Insert description here
// You can write your code in this editor

isWalk = ((stepCount div 30) % 2) == 0;

if (global.selectCharacter = "Akane") {
	x = 100;
	if (isWalk) {
		sprite_index = spriteAkaneRightWalk;
	}
	else {
		sprite_index = spriteAkaneRightStop;
	}
}
if (global.selectCharacter = "Aoi") {
	x = room_width - (100);
	if (isWalk) {
		sprite_index = spriteAoiLeftWalk;
	}
	else {
		sprite_index = spriteAoiLeftStop;
	}
}

draw_self();
