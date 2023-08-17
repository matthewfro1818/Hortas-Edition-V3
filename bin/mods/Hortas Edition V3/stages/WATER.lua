function onCreatePost()
    makeLuaSprite('water', 'watar', -950, 1150);
    scaleObject('water', 1.2, 1.2);

    makeLuaSprite('3DBG', 'grievos', -950, 1150);
    scaleObject('3DBG', 1.2, 1.2);  

	makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2050);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', '253DB4' , 0.1, 'linear');

    addLuaSprite('water', false);
    addLuaSprite('3DBG', false);
    addLuaSprite('platform2', false);

    addWiggleEffect('water', 'WAVY');
    addWiggleEffect('3DBG', 'heat wave vertical');
    
    close(true);
    end