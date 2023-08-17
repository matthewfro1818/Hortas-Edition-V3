function onCreate()
    makeLuaSprite('demigodBGS/vehemence', 'demigodBGS/vehemence', -300, -250);
    scaleObject('demigodBGS/vehemence', 1.2, 1.2);
    setScrollFactor('demigodBGS/vehemence', 0, 0);

	makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2040);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);
	
    addLuaSprite('demigodBGS/vehemence', false);
    addLuaSprite('platform2', false);
end

local shadname = "stridentCrisisWavy2"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy2")
		setSpriteShader('demigodBGS/vehemence', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('demigodBGS/vehemence', 'uWaveAmplitude', 0.1)
	setShaderFloat('demigodBGS/vehemence', 'uFrequency', 5)
	setShaderFloat('demigodBGS/vehemence', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('demigodBGS/vehemence', 'uTime', os.clock())
	end