function onCreate()
    makeLuaSprite('holy', 'holy', -1000, 0);
    setScrollFactor('holy', 0.3, 0.3);
    scaleObject('holy', 1.6, 1.6);

    addLuaSprite('holy');
    end


local shadname = "stridentCrisisWavy1"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy1")
		setSpriteShader('holy', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('holy', 'uWaveAmplitude', 0.1)
	setShaderFloat('holy', 'uFrequency', 5)
	setShaderFloat('holy', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('holy', 'uTime', os.clock())
	end