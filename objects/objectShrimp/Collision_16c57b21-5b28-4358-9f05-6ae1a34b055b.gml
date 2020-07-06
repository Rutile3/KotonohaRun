/// @description Insert description here
// You can write your code in this editor

global.scrollSpeed = min(global.scrollSpeed + addSpeed, 8);

global.nowScore += addScore;
audio_play_sound(soundGetFood, 0, false);
instance_destroy();
