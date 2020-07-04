/// @description Insert description here
// You can write your code in this editor

global.nowSurviveTime = 0;

// ジャンプと落下関連の処理
// 以下のリンクを参考にパラメータを設定
// 参考リンク：スーパーマリオのジャンプのアルゴリズム
// https://qiita.com/morian-bisco/items/4c659d9f940c7e3a2099
junpAddVspeed = (30 * 2) / 256;
fallAddVspeed = (90 * 2) / 256;
maxJumpVspeed = -4 * 2;
maxFallVspeed =  4 * 2;

moveSpeed = 2;

// 画面外へ行くことによる落下死する高さ
// キャラ2つ分の余裕を持たせている
underDeathY =  room_height + sprite_height * 2.5;

canJump = false;
walkCount = 0;

audio_play_sound(soundBGM01, 0, true);
