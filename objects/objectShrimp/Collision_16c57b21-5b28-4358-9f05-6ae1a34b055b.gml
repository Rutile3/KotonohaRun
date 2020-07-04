/// @description Insert description here
// You can write your code in this editor

global.scrollSpeed = min(global.scrollSpeed + 0.06, 8);

global.nowScore += 300;
audio_play_sound(soundGetFood, 0, false);
instance_destroy();
