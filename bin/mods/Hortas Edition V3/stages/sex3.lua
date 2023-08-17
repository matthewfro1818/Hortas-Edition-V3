function onCreate()
    makeLuaSprite('sex3', 'sex3', -900, 0);
    setScrollFactor('sex3', 0.3, 0.3);

    makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2050);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	doTweenColor('platform2', 'platform2', 'FF0000' , 0.1, 'linear');

    addLuaSprite('sex3');
    addLuaSprite('platform2', false);
    end
	

local shadname = "stridentCrisisWavy2"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy2")
		setSpriteShader('sex3', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('sex3', 'uWaveAmplitude', 0.1)
	setShaderFloat('sex3', 'uFrequency', 5)
	setShaderFloat('sex3', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('sex3', 'uTime', os.clock())
	end