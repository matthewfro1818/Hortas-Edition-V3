function onCreatePost()
    makeLuaSprite('demiurge', 'demiurgeBG/demiurgeSky', -2000, -200);
    setScrollFactor('demiurge', 0.3, 0.3);

    makeLuaSprite('demiurgeD2', 'demiurgeBG/demiurgeDebris2', -2500, 800);
    setScrollFactor('demiurgeD2', 0.8, 0.8);

    makeLuaSprite('demiurgeD1', 'demiurgeBG/demiurgeDebris1', -2500, 1000);
    setScrollFactor('demiurgeD1', 0.8, 0.8);

    makeLuaSprite('demiurgeP1', 'demiurgeBG/demiurgePlatform', -2500, 1000);
    setScrollFactor('demiurgeP1', 1, 1);

    makeLuaSprite('demiurgeP2', 'demiurgeBG/demiurgePlatform2', -2500, 1000);
    setScrollFactor('demiurgeP2', 1, 1);

    addLuaSprite('demiurge');
    addLuaSprite('demiurgeD2');
    addLuaSprite('demiurgeD1');
    addLuaSprite('demiurgeP1');
    addLuaSprite('demiurgeP2');

    addBloomEffect('game', 0.25, 0.85);
    addChromaticAbberationEffect('hud', 0.005)

    close(true);
    end