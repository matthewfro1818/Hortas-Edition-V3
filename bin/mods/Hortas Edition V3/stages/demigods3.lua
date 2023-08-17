function onCreate()
    makeLuaSprite('jeopardizedBG', 'demigodBGS/cumril', -500, -250);
    scaleObject('jeopardizedBG', 1.2, 1.2);
    setScrollFactor('jeopardizedBG', 0, 0);
    
    addLuaSprite('jeopardizedBG', false);
end

local shadname = "stridentCrisisWavy3"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy3")
		setSpriteShader('jeopardizedBG', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('jeopardizedBG', 'uWaveAmplitude', 0.1)
	setShaderFloat('jeopardizedBG', 'uFrequency', 5)
	setShaderFloat('jeopardizedBG', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('jeopardizedBG', 'uTime', os.clock())
	end