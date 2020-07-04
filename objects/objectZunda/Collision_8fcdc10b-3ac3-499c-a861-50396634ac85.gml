/// @description Insert description here
// You can write your code in this editor

global.scrollSpeed = min(global.scrollSpeed + 0.02, 8);

global.nowScore += 100;
audio_play_sound(soundGetFood, 0, false);
instance_destroy();
