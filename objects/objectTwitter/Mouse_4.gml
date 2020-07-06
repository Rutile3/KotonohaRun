/// @description Insert description here
// You can write your code in this editor

audio_play_sound(soundGameStart, 0, false);

text = "https://twitter.com/intent/tweet";
text += "?text=Kotonoha+Run%E3%81%A7";
text += string(global.nowScore) + "%E7%82%B9%E7%8D%B2%E5%BE%97%E3%81%97%E3%81%A6";
text += string(global.nowSurviveTime div 60) + "%E7%A7%92%E9%96%93%E7%94%9F%E3%81%8D%E6%AE%8B%E3%81%A3%E3%81%9F%EF%BC%81";
text += "%0D%0A%0D%0A%23KotonohaRun";
url_open(text);
