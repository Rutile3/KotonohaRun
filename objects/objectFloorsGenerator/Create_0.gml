/// @description Insert description here
// You can write your code in this editor

global.scrollSpeed = 1;

floorMoveCount = -(sprite_height / 2);

floorSpan = 0;
floorCount = 0;
maxFloorY = sprite_height * 7;
minFloorY = sprite_height * 3;
nextFloorY = sprite_height * 5;

random_set_seed(time)
