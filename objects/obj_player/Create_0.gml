/// @description Setup and variables

// Variables
walkSpeed = 16;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
nearbyNPC = noone;
lookRange = 30;
hasGreeted = false;
npcPrompt = noone;
hasItem = noone;
hasItemX = x;
hasItemY = y;
nearbyItem = noone;
itemPrompt = noone;
carryLimit = 0;
myState = playerState.idle;
runSpeed = 0;
runMax = 12;
running = false;
startDust = 0;

// Create listener and set orientation
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);

// Player Sprite array [myState][dir]
// Idle
playerSpr[playerState.idle][0] = spr_lobo_derecha;
playerSpr[playerState.idle][1] = spr_lobo_front;
playerSpr[playerState.idle][2] = spr_lobo_izq;
playerSpr[playerState.idle][3] = spr_lobo_derecha;

// Walking
playerSpr[playerState.walking][0] = spr_lobo_derecha;
playerSpr[playerState.walking][1] = spr_lobo_front;
playerSpr[playerState.walking][2] = spr_lobo_izq;
playerSpr[playerState.walking][3] = spr_lobo_derecha;
