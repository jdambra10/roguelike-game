/* Event: On collision with PotionObj */

// Subtract health from EnemyObj available health pool
Enemy.hp = Enemy.hp - global.player.potion_atk.damage;
