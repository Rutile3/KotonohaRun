/// @description Insert description here
// You can write your code in this editor

if (y > underDeathY) {
	audio_stop_sound(soundBGM01);
	room_goto(roomResult);
}

global.nowSurviveTime++;
