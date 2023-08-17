function onCreatePost()
    makeLuaSprite('space1', 'providenceBG/providenceSky1', -1500, 0);
    setScrollFactor('space1', 0.3, 0.3);
    scaleObject('space1', 1.8, 1.8);

    makeLuaSprite('space2', 'providenceBG/providenceSky2', -2000, -200);
    setScrollFactor('space2', 0.3, 0.3);

    makeLuaSprite('providenceD', 'providenceBG/providenceDebris', -1645, 900);
    setScrollFactor('providenceD', 0.8, 0.8);

    makeLuaSprite('providenceE', 'providenceBG/providenceEarth', -2000, 800);
    setScrollFactor('providenceE', 0.6, 0.6);

    makeLuaSprite('providenceH', 'providenceBG/providenceHole', -2000, -200);
    setScrollFactor('providenceH', 0.4, 0.4);

    makeLuaSprite('providenceP', 'providenceBG/providencePlatofmr', -1245, 1800);
    setScrollFactor('providenceP', 1, 1);

    addLuaSprite('space1');
    addLuaSprite('space2');
    addLuaSprite('providenceD');
    addLuaSprite('providenceE');
    addLuaSprite('providenceH');
    addLuaSprite('providenceP', true);

    addGlitchEffect('space2',3,10,0.25);
--  addBloomEffect('game', 0.25, 0.85);
    addChromaticAbberationEffect('hud', 0.006);
	
--  doTweenAlpha('spaic','space2',0.25,0.1,'linear');

    close(true);
end