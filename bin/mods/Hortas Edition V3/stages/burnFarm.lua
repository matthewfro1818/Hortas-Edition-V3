function onCreate()

    makeLuaSprite('Sky','resentfulBG/sky',-700,-500);
	setScrollFactor('Sky', 0.9, 0.9);

    makeLuaSprite('Hills','resentfulBG/hills',-250,200);
	setScrollFactor('Hills', 0.9, 0.7);

	makeLuaSprite('House','resentfulBG/house',150,250);
	setScrollFactor('House', 1.1, 0.9);

	makeLuaSprite('Ground','resentfulBG/ground1',-400,600);

	makeLuaSprite('Corn1','resentfulBG/cornies',-350,325);

	makeLuaSprite('Corn2','resentfulBG/cornies',1050,325);

	makeLuaSprite('Fences','resentfulBG/fence',-350,450);

	makeLuaSprite('Sign','resentfulBG/sign',0,500);
	
	makeAnimatedLuaSprite('fire', 'resentfulBG/fire', -50, -1195) -- -95 real pos

	addAnimationByPrefix('fire', 'idle', 'Fire', 24, true);
	objectPlayAnimation('fire', 'idle', true);

	setScrollFactor('fire', 1, 1);
	scaleObject('fire', 1.25,1.25);

	setBlendMode('fire', 'add');

	addLuaSprite('Sky',false);
	addLuaSprite('Hills',false);
	addLuaSprite('House',false);
	addLuaSprite('Ground',false);
	addLuaSprite('fire', false);
	addLuaSprite('Corn1',false);
	addLuaSprite('Corn2',false);
	addLuaSprite('Fences',false);
	addLuaSprite('Sign',false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

--[[
resentful idas
Health drain and slight screen shaking in the second half!!!

1024: camhud alpha 1 tween obvs
1163: camgame alpha 1 without tween
1199: bring fire up! make bambi even madder and... make the camera wiggle like idk elapsed time math sin???????? and make chromatic abberation more intense aswell health drain also camera flash YIPE also camHud and camgame alpha 0 no tween



]]