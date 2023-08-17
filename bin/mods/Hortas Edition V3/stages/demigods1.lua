function onCreate()
    makeLuaSprite('demigodBGS/diaphanous', 'demigodBGS/diaphanous', -500, -250);
    scaleObject('demigodBGS/diaphanous', 1.2, 1.2);
    setScrollFactor('demigodBGS/diaphanous', 0, 0);

	makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2040);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
    
    addLuaSprite('demigodBGS/diaphanous', false);
    addLuaSprite('platform2', false);
end

local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('demigodBGS/diaphanous', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('demigodBGS/diaphanous', 'uWaveAmplitude', 0.1)
	setShaderFloat('demigodBGS/diaphanous', 'uFrequency', 5)
	setShaderFloat('demigodBGS/diaphanous', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('demigodBGS/diaphanous', 'uTime', os.clock())
	end