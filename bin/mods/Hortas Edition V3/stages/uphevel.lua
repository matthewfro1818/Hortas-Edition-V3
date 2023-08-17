function onCreate()
    makeLuaSprite('unfair', 'unfair', -800, -300);
    setScrollFactor('unfair', 0.3, 0.3);
	addLuaSprite('unfair', false);

    makeLuaSprite('blocks', 'unfairnewblock', -800, -300);
    setScrollFactor('blocks', 0.7, 0.7);
	addLuaSprite('blocks', false);

	makeLuaSprite('platform2', 'platform', 250, 300);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	addLuaSprite('platform2', false);
    end
	
	local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('unfair', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('unfair', 'uWaveAmplitude', 0.1)
	setShaderFloat('unfair', 'uFrequency', 5)
	setShaderFloat('unfair', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('unfair', 'uTime', os.clock())
	end