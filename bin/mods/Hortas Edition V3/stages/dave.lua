function onCreatePost()
    makeLuaSprite('dave3D1', 'abodeBG/abode3D2', -600, -200);
    setScrollFactor('dave3D1', 0.75, 0.75);
    scaleObject('dave3D1', 1.65, 1.65);
    doTweenAlpha('fartpoo', 'dave3D1', 0, 0.1, 'linear');

    makeLuaSprite('dave3D2', 'abodeBG/abode3D1', -600, -200);
    setScrollFactor('dave3D2', 0.75, 0.75);
    doTweenAlpha('fartpoo2', 'dave3D2', 0, 0.1, 'linear');

    makeLuaSprite('daveSky', 'abodeBG/abode', -200, -200);
    setScrollFactor('daveSky', 0.75, 0.75);

    makeLuaSprite('daveHills', 'abodeBG/hills', -225, -125);
    setScrollFactor('daveHills', 0.8, 0.8);
    scaleObject('daveHills', 1.25, 1);

    makeLuaSprite('daveGate', 'abodeBG/gate', -200, -125);
    setScrollFactor('daveGate', 0.9, 0.9);
    scaleObject('daveGate', 1.2, 1);

    makeLuaSprite('daveGrass', 'abodeBG/grass', -225, -125);
--  setScrollFactor('daveGrass', 0.9, 0.9);
    scaleObject('daveGrass', 1.2, 1);

    addLuaSprite('dave3D1', false);
    addLuaSprite('dave3D2', false);
    addLuaSprite('daveSky', false);
    addLuaSprite('daveHills', false);
    addLuaSprite('daveGate', false);
    addLuaSprite('daveGrass', false);

    addWiggleEffect('dave3D2', 'wavy');
    addWiggleEffect('dave3D1', 'heat wave vertical');
    
    close(true);
    end