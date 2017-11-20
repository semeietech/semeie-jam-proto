spritesWalk[directions.right] = sprite_kronath_walk_side_sword;
spritesWalk[directions.left] = sprite_kronath_walk_side_sword;
spritesWalk[directions.up] = sprite_kronath_walk_back_sword;
spritesWalk[directions.down] = sprite_kronath_walk_front_sword;

spritesIdle[directions.right] = sprite_kronath_iddle_side_sword;
spritesIdle[directions.left] = sprite_kronath_iddle_side_sword;
spritesIdle[directions.up] = sprite_kronath_iddle_back_sword;
spritesIdle[directions.down] = sprite_kronath_iddle_front_sword;

spritesSwordMelee[directions.right] = sprite_kronath_atack_melee_onehand_side;
spritesSwordMelee[directions.left] = sprite_kronath_atack_melee_onehand_side;
spritesSwordMelee[directions.up] = sprite_kronah_atack_melee_onehand_back;
spritesSwordMelee[directions.down] = sprite_kronath_atack_melee_onehand_front;

playerSprites[states.walk] = spritesWalk;
playerSprites[states.soak] = spritesIdle;
playerSprites[states.idle] = spritesIdle;
playerSprites[states.attack] = spritesSwordMelee;