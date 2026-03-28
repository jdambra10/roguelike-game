if (Enemy.hp <= 0) {
	instance_destroy();
    player_gain_exp(Enemy.xpValue)
}