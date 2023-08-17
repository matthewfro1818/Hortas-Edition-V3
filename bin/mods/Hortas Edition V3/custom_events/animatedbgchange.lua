function onEvent(name, value1, value2)
if name == 'animatedbgchange' then

    makeAnimatedLuaSprite( value1, value1, 0, 0);
	addAnimationByPrefix(value1, aniName, value2);	
    addLuaSprite(value1, false);
	objectPlayAnimation(value1, aniName, false);
    
    
    end
	end
