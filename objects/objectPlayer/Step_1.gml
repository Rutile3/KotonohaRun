/// @description Insert description here
// You can write your code in this editor

// プレイヤーの下に床があるか
if (place_meeting(x, y + 1, objectFloor01)) {
	// 床があるので落下速度を0にする
	vspeed = 0;	
}
else {
	// 落下処理
	// 上昇時と下降時の加速度の加算値は別にしている
	// 参考リンク：スーパーマリオのジャンプのアルゴリズム#ビヨーンからのシュッ
	// https://qiita.com/morian-bisco/items/4c659d9f940c7e3a2099#%E3%83%93%E3%83%A8%E3%83%BC%E3%83%B3%E3%81%8B%E3%82%89%E3%81%AE%E3%82%B7%E3%83%A5%E3%83%83
	addVspeed = (vspeed <= 0 ? junpAddVspeed : fallAddVspeed); 
	vspeed = min(vspeed + addVspeed, maxFallVspeed);
	
	// 次の落下で床に接触するなら
	if (place_meeting(x, y + vspeed + 1, objectFloor01)) {
		vspeed = 0;
		move_contact_all(270, -1); // 接触する床に接着する
	}
}
