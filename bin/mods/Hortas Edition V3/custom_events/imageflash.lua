function onEvent(name, value1, value2)
    if name == 'imageflash' then
    makeLuaSprite('value1', value1, 0, 0);
    addLuaSprite('value1', true);
    doTweenColor('hello', 'value1', 'FFFFFFFF', 0.1, 'quartIn');
    setObjectCamera('value1', 'other');
    runTimer('wait', value2);
    end
end 
    
function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'value1', 0, 0.1, 'linear');
    end
end
    
function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('value1', true);
    end
end
