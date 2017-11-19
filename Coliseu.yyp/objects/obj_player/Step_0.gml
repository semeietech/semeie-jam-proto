defaultFunc();

script_execute(state_array[state]);

var sprites = playerSprites[state];
var sprite = sprites[playerDirection];
sprite_index = sprite;

cooldown -= 1;
stamina -= 1;