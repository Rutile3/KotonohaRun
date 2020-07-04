/// @description Insert description here
// You can write your code in this editor

// ジャンプと落下の処理
// 上昇時と下降時の加速度の加算値は別にしている
// 参考リンク：スーパーマリオのジャンプのアルゴリズム#ビヨーンからのシュッ
// https://qiita.com/morian-bisco/items/4c659d9f940c7e3a2099#%E3%83%93%E3%83%A8%E3%83%BC%E3%83%B3%E3%81%8B%E3%82%89%E3%81%AE%E3%82%B7%E3%83%A5%E3%83%83
if (vspeed < 0) {
	// ジャンプ時
	vspeed += junpAddVspeed;
	canJump = false;
}
else {
	// 落下時
	vspeed = min(vspeed + fallAddVspeed, maxFallVspeed);
	
	// 現在床に接触しておらず（落下死ながら横から当たった時の対策）、
	// 次の落下で床に接触するなら床に接着する
	if (place_meeting(x, y + 1 + vspeed, objectFloor01)) {
		canJump = true;
		vspeed = 0;
		move_contact_all(270, -1); // 接触する床に接着する
	}
	else {
		canJump = false;
	}
}

if (!canJump) {
	sprite_index = spriteAoiRightWalk;
	walkCount = 0;
}
else {
	if (((walkCount div (20 / global.scrollSpeed)) % 2) == 0) {
		sprite_index = spriteAoiRightStop;
	}
	else {
		sprite_index = spriteAoiRightWalk;
	}
	walkCount++;
}
