function onCreate()

    makeLuaSprite('dereken', 'morpheus/lean', -470, -250);
-- scaleObject('dereken', 1.2, 1.2);
    setScrollFactor('dereken', 0.1, 0.1);

	makeLuaSprite('platform2', 'demiurgePlatform2', 245, 2050);
	setScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 0.3, 0.3);

    addLuaSprite('dereken', false);
    addLuaSprite('platform2', false);
end
	
local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('dereken', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('dereken', 'uWaveAmplitude', 0.1)
	setShaderFloat('dereken', 'uFrequency', 5)
	setShaderFloat('dereken', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('dereken', 'uTime', os.clock())
	end