/* Global Enums */
enum ELEMENTAL_VALUE {
	LIGHTNING,
	POISON,
	FIRE,
	ICE,
	NONE
}

enum ROOM_TYPE {
	SPAWN,
	MOB,
	TREASURE,
	SHOP,
	PUZZLE,
	BOSS
}

enum ENEMY_POOL {
	TIER_1,
	TIER_2,
	TIER_3
}

// Used to print the player's current attack element
// in a proper format.
global.element_names = [
    "Lightning", // index 0 = ELEMENTAL_VALUE.LIGHTNING
    "Poison",    // index 1 = ELEMENTAL_VALUE.POISON
    "Fire",      // index 2 = ELEMENTAL_VALUE.FIRE
    "Ice",       // index 3 = ELEMENTAL_VALUE.ICE
    "None"       // index 4 = ELEMENTAL_VALUE.NONE
];

/* Player Data
Parameter Reference Chart:
name: name of the player
level: level of the player
hp: CURRENT health value
hpMax: maximum health value
speed: how fast the mob moves
weakness: elemental or weapon weakness
resistance: elemental or weapon resistance (Tier 2 & 3 only)
sprites: sprite and default animation to use
actions: special attacks the enemy can use
AIscript: enemy AI for attacking and movement
*/
global.player =
{
	player:
	{
		name: "Hero",
        level: 1,
        exp: 0,
		hp: 30,
		hpMax: 30,
		speed: 3,
		element: ELEMENTAL_VALUE.NONE,
		weakness: ELEMENTAL_VALUE.NONE,
		sprites: {idle: PlayerSprite},
		actions: []
	},
	
	potion_atk:
	{
        atk_speed: 2,
		x_speed: 0,
        y_speed: 0,
		fire_rate: 1,
		element: ELEMENTAL_VALUE.NONE,
		damage: 5
	}
}



/* Enemy Data
Parameter Reference Chart:
name: Name of Mob
hp: CURRENT health value
hpMax: maximum health value
damage: how much damage their attack does
speed: how fast the mob moves
weakness: elemental or weapon weakness
resistance: elemental or weapon resistance (Tier 2 & 3 only)
sprites: sprite and default animation to use
actions: special attacks the enemy can use
AIscript: enemy AI for attacking and movement
*/
global.tier_1_enemies =
{
	slime:
	{
		name: "Slime",
		hp: 30,
		hpMax: 30,
        damage: 5,
		xpValue: 10,
		speed: 10,
		weakness: ELEMENTAL_VALUE.NONE,
		sprites: {idle: SlimeSprite},
		actions: [],
		AIscript: function()
		{
			//enemy AI goes here
		}
	}
}

global.tier_2_enemies =
{
	slime:
	{
		name: "Specter",
		hp: 60,
		hpMax: 60,
		xpValue: 30,
		speed: 15,
		weakness: ELEMENTAL_VALUE.NONE,
		resistance: ELEMENTAL_VALUE.NONE,
		sprites: {idle: SlimeSprite},
		actions: [],
		AIscript: function()
		{
			//enemy AI goes here
		}
	}
}

global.tier_3_enemies =
{
	slime:
	{
		name: "Victor the Undying",
		hp: 200,
		hpMax: 200,
		xpValue: 150,
		speed: 15,
		weakness: ELEMENTAL_VALUE.NONE,
		resistance: ELEMENTAL_VALUE.NONE,
		sprites: {idle: SlimeSprite},
		actions: [],
		AIscript: function()
		{
			//enemy AI goes here
		}
	}
}



/* Room Templates
Parameter Reference Chart:
room_type: type of room it is
min_enemies: minimum enemies to spawn
max_enemies: maximum enemies to spawn
enemy_pool: enemy pool to pull from 
room_sprite: sprite of the room
n_door: toggle bool of north door
s_door: toggle bool of south door
e_door: toggle bool of east door
w_door: toggle bool of west door
*/
/*
global.room_templates =
{
	spawn_room_1:
	{
		room_type: ROOM_TYPE.SPAWN,
		min_enemies: 0,
		max_enemies: 0,
		enemy_pool: ENEMY_POOL.TIER_1,
		room_sprite: spr_spawn_room_1,
		n_door: false,
		s_door: false,
		e_door: false,
		w_door: false
	},
	
	mob_room_1:
	{
		room_type: ROOM_TYPE.MOB,
		min_enemies: 3,
		max_enemies: 8,
		enemy_pool: ENEMY_POOL.TIER_1,
		room_sprite: spr_mob_room_1,
		n_door: false,
		s_door: false,
		e_door: false,
		w_door: false
	},
	
	mob_room_2:
	{
		room_type: ROOM_TYPE.MOB,
		min_enemies: 3,
		max_enemies: 8,
		enemy_pool: ENEMY_POOL.TIER_1,
		room_sprite: spr_mob_room_1,
		n_door: false,
		s_door: false,
		e_door: false,
		w_door: false
	}
}
*/



/* Floor Templates
Parameter Reference Chart:
room_type: type of room it is
min_enemies: minimum enemies to spawn
max_enemies: maximum enemies to spawn
enemy_pool: enemy pool to pull from 
room_sprite: sprite of the room
n_door: toggle bool of north door
s_door: toggle bool of south door
e_door: toggle bool of east door
w_door: toggle bool of west door
*/
/*
global.normal_floor_templates =
{
	floor_1:
	{
		rooms: 4,
		spawn_room: global.room_templates.spawn_room_1,
		spawn_n_door: struct_set(global.room_templates.spawn_room_1, "n_door", true),
		spawn_s_door: struct_set(global.room_templates.spawn_room_1, "s_door", false),
		spawn_e_door: struct_set(global.room_templates.spawn_room_1, "e_door", false),
		spawn_w_door: struct_set(global.room_templates.spawn_room_1, "w_door", false),
		room_a_spawn_x: 0,
		room_a_spawn_y: 401
		//room_a_n_door: function {
		//struct_names_count()	
		//}
	}
}
*/