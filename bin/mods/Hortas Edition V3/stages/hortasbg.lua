function onCreate()
    makeLuaSprite('deforester', 'deforester', -1150, 1300);
    scaleObject('deforester', 1.2, 1.2);

    makeLuaSprite('hortasbg', 'hortasbg', -1150, 1300);
    scaleObject('hortasbg', 1.2, 1.2);

	makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2050);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', 'A020F0' , 0.1, 'linear');

    addLuaSprite('deforester', false);
    addLuaSprite('hortasbg', false);
    addLuaSprite('platform2', false);
    end
	
local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('deforester', shadname)
		setSpriteShader('hortasbg', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('deforester', 'uWaveAmplitude', 0.1)
	setShaderFloat('hortasbg', 'uWaveAmplitude', 0.1)
	setShaderFloat('deforester', 'uFrequency', 5)
	setShaderFloat('hortasbg', 'uFrequency', 5)
	setShaderFloat('deforester', 'uSpeed', 2.25)
	setShaderFloat('hortasbg', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('deforester', 'uTime', os.clock())
	setShaderFloat('hortasbg', 'uTime', os.clock())
	end