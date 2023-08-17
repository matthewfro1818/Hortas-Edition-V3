function onCreate()
    makeLuaSprite('demigodBGS/what', 'demigodBGS/what', -500, 0);
    scaleObject('demigodBGS/what', 1.2, 1.2);
    setScrollFactor('demigodBGS/what', 0.1, 0.1);

    addLuaSprite('demigodBGS/what', false);
end

local shadname = "stridentCrisisWavy4"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy4")
		setSpriteShader('demigodBGS/what', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('demigodBGS/what', 'uWaveAmplitude', 0.1)
	setShaderFloat('demigodBGS/what', 'uFrequency', 5)
	setShaderFloat('demigodBGS/what', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('demigodBGS/what', 'uTime', os.clock())
	end